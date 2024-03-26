# demo-cron-an-pytest-ficture
fixture with pytest and cronjob creation

## fixture explanation

In `test_wallet.py`, fixtures are used to provide a fixed baseline for testing. A fixture /workspaces/demo-cron-an-pytest-ficture/test/test_wallet.pyis a function that pytest recognizes and uses to set up a known state for a test./workspaces/demo-cron-an-pytest-ficture/test/test_wallet.py

In the example code, there are two fixtures defined: `empty_wallet` and `wallet_with_funds`. The `empty_wallet` fixture returns a new `Wallet` object with a balance of 0, while the `wallet_with_funds` fixture returns a `Wallet` object with a balance of 100.

Here's an explanation of how the fixtures are used in the test functions:

* `test_default_empty_wallet`: This test function uses the `empty_wallet` fixture to create a new `Wallet` object with a balance of 0. It then asserts that the balance of the wallet is 0, which verifies that the wallet is empty by default.
* `test_deposit`: This test function uses the `wallet_with_funds` fixture to create a `Wallet` object with a balance of 100. It then deposits 50 into the wallet and asserts that the balance of the wallet is 150, which verifies that the deposit function is working correctly.
* `test_withdraw`: This test function also uses the `wallet_with_funds` fixture to create a `Wallet` object with a balance of 100. It then withdraws 50 from the wallet and asserts that the balance of the wallet is 50, which verifies that the withdraw function is working correctly.

By using fixtures, we can ensure that each test starts with a known state, which makes the tests more reliable and easier to understand. If you have any questions about how fixtures work in `test_wallet.py`, please let me know. I'm happy to help explain further.

To test the code run :

```sh
make run-test
# or pytest
```

## running test insidde container

Running tests inside a container can provide a consistent, isolated, and portable environment for testing your application, which can help ensure that your tests are reliable, efficient, and meaningful.

Moreover, it can provide several benefits, including:

1. Isolation: Containers provide an isolated environment for running tests, which means that tests running inside a container won't interfere with other processes running on the same machine. This can be particularly useful if you're running tests on a shared development machine or a continuous integration server.
2. Consistency: Containers allow you to create a consistent environment for running tests, which means that your tests will run the same way every time, regardless of the underlying operating system or other environmental factors. This can help ensure that your tests are reliable and reproducible.
3. Portability: Containers can be easily moved from one machine to another, which means that you can run your tests in the same environment on your local development machine, a continuous integration server, and a production server. This can help ensure that your tests are relevant and meaningful in all environments.
4. Version control: Containers can be version-controlled, which means that you can create a specific container image for each version of your application. This can help ensure that your tests are running against the correct version of your application and its dependencies.
5. Resource management: Containers allow you to control the resources that are allocated to each test, which means that you can run multiple tests in parallel without worrying about resource contention. This can help speed up your test suite and make your development process more efficient.

To test the code inside a container :

```sh
make build
# or pytest
```

## Run cron inside Docker

Source : https://stackoverflow.com/questions/37458287/how-to-run-a-cron-job-inside-a-docker-container

cron to create :

```sh
# get into the container
make enter-container

# start cron
make start-cron

# check status
make cron-status

# create a file
touch log.txt

# open crontab
crontab -e

# add this line
* * * * * echo "this is a test" >> /app/log.txt

# make sure the cron is activated
service cron status

# if not activated run
#service cron start
```

__NOTE__: cron can be created using python as well. I will leave you to research about it.