// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/);
channels.keys().forEach(channels);

window.addEventListener('load', (event) => {
  const NigeriaPrices = {
    abuja: 5500,
    rivers: 2000,
    lagos: 4000,
    abia: 40000,
  };

  const WorldPrices = {
    usa: 14500,
    canada: 14500,
    china: 20000,
    australia: 25000,
    ghana: 14500,
  };

  let totalPrice = 0;
  const locationSent = document.getElementById('location-sent');
  const withinNigeria = document.getElementById('within-nigeria');
  const outsideNigeria = document.getElementById('outside-nigeria');

  locationSent.addEventListener('change', (e) => {
    withinNigeria.classList.add('hidden');
    outsideNigeria.classList.add('hidden');

    document
      .getElementById(`${e.target.value}-nigeria`)
      .classList.remove('hidden');
  });

  withinNigeria.addEventListener('change', (e) => {
    totalPrice = NigeriaPrices[`${e.target.value}`] + 15000;
  });

  outsideNigeria.addEventListener('change', (e) => {
    totalPrice = WorldPrices[`${e.target.value}`] + 25000;
  });

  window.payWithPaystack = function () {
    //   checking to make sure deatils are selected before

    if (
      (document.getElementById('location-sent').value != 'none' &&
        document.getElementById('within-nigeria').value != 'none') ||
      (document.getElementById('location-sent').value != 'none' &&
        document.getElementById('outside-nigeria').value != 'none')
    ) {
      const email = document.getElementById('userEmail').innerText;
      const number = document.getElementById('userPhone').innerText;
      const processBtn = document.querySelector('.payment-process-btn');
      const appBtn = document.querySelector('.application-btn');

      console.log(totalPrice);

      var handler = PaystackPop.setup({
        key: 'pk_test_7b3e5a9dd6c8b10a4c643f93498dfd695ffdc458', //put your public key here
        email: email, //put your customer's email here
        amount: Number(totalPrice + '00'), //amount the customer is supposed to pay
        metadata: {
          custom_fields: [
            {
              display_name: 'Mobile Number',
              variable_name: 'mobile_number',
              value: number, //customer's mobile number
            },
          ],
        },
        callback: function (response) {
          //after the transaction have been completed
          //make post call  to the server with to verify payment
          //using transaction reference as post data
          if (response.status == 'success') {
            //successful transaction
            alert('Transaction was successful');
            // processBtn.classList.add("hidden");
            // appBtn.classList.remove("hidden");
          } else {
            //transaction failed
            alert(response);
          }
        },
        onClose: function () {
          //when the user close the payment modal
          alert('Transaction cancelled');
        },
      });
      handler.openIframe(); //open the paystack's payment modal
    }
  };
});
