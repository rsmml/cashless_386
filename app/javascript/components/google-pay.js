const initGooglePay = () => {
  let googlePayClient;
  function onGooglePayLoaded() {
    googlePayClient = new google.payments.api.PaymentsClient({
      environment: 'TEST'
    });
    googlePayClient.isReadyToPay(googlePayBaseConfiguration).then(function(response) {
      if(response.result) {
        createAndAddButton();
        function createAndAddButton() {

          const googlePayButton = googlePayClient.createButton({

            // currently defaults to black if default or omitted
            buttonColor: 'default',

            // defaults to long if omitted
            buttonType: 'long',

            onClick: onGooglePaymentsButtonClicked
          });

          document.getElementById('buy-now').appendChild(googlePayButton);
        }

        function onGooglePaymentsButtonClicked() {
          const tokenizationSpecification = {
            type: 'PAYMENT_GATEWAY',
            parameters: {
              gateway: 'example',
              gatewayMerchantId: 'gatewayMerchantId'
            }
          };
          const cardPaymentMethod = {
            type: 'CARD',
            tokenizationSpecification: tokenizationSpecification,
            parameters: {
              allowedCardNetworks: ['VISA','MASTERCARD'],
              allowedAuthMethods: ['PAN_ONLY','CRYPTOGRAM_3DS'],
              billingAddressRequired: true,
              billingAddressParameters: {
                format: 'FULL',
                phoneNumberRequired: true
              }
            }
          };
          const transactionInfo = {
            totalPriceStatus: 'FINAL',
            totalPrice: '1',
            currencyCode: 'EUR'
          };
          const merchantInfo = {
            // merchantId: '01234567890123456789', Only in PRODUCTION
            merchantName: 'Example Merchant Name'
          };
          const paymentDataRequest = Object.assign({}, googlePayBaseConfiguration, {
            allowedPaymentMethods: [cardPaymentMethod],
            transactionInfo: transactionInfo,
            merchantInfo: merchantInfo
          });
          googlePayClient
            .loadPaymentData(paymentDataRequest)
            .then(function(paymentData) {
              processPayment(paymentData);
            }).catch(function(err) {
              // Log error: { statusCode: CANCELED || DEVELOPER_ERROR }
            });
        }
      } else {
        alert("Unable to pay using Google Pay");
      }
    }).catch(function(err) {
      console.error("Error determining readiness to use Google Pay: ", err);
    });
  }
};

export { initGooglePay };
