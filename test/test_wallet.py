#  adding the root directory of your project to the Python path
import sys
import os
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# import
import pytest
from wallet import Wallet

@pytest.fixture
def empty_wallet():
    return Wallet()

@pytest.fixture
def wallet_with_funds():
    wallet = Wallet()
    wallet.deposit(100)
    return wallet

def test_default_empty_wallet(empty_wallet):
    assert empty_wallet.balance == 0

def test_deposit(wallet_with_funds):
    wallet_with_funds.deposit(50)
    assert wallet_with_funds.balance == 150

def test_withdraw(wallet_with_funds):
    wallet_with_funds.withdraw(50)
    assert wallet_with_funds.balance == 50