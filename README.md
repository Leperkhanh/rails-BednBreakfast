# MovieGuru

Welcome to the Bed-N-Breakfast where a host and guest can arrange a rental of property.

## Usage

A user may sign up as a host or guest. Only and host can use omniauth to sign up for account. You must be a host in order to create a listing. Once a listing is created, a guest may create a booking with the listing. Listings can only be deleted by the listing's user. A booking can not be deleted, so make sure you want to book before proceeding. During the booking procress, the guest may add additional comments to the host.

## Development

When first starting the application, run bundle install to install all the gems and dependencies. There is seed data that can be used as test data. You can get all the seed data into the database by running rails db:seed. Developer must sign up for google developer services and add the following keys to .env in order for omniauth to work properly.

OOGLE_CLIENT_ID=<yourClientKey>\
GOOGLE_CLIENT_SECRET=<yourClientSecet>

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Leperkhanh/rails-BednBreakfast.

## License

https://github.com/Leperkhanh/rails-BednBreakfast/blob/main/LICENSE
