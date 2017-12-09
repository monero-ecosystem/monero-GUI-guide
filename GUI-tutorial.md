# I. Choose a language
![Language](/media/language.png)
After extracting the package click on `monero-wallet-gui.exe` you'll see a list of available languages, click on the one of your choice, then go to the next step.

# II. Create a Wallet
![welcome](/media/welcome.png)
On this page you can choose between three options:

1. *Create a new wallet* - Start the procedure to make a new [wallet](https://getmonero.org/resources/moneropedia/wallet.html) from scratch. Choose this option if it's the first time you are creating a wallet.
2. *Restore wallet from keys or mnemonic seed* - Click here if you want to recover a pre-existent wallet using the mnemonic seed or the keys (This is also the option for creating a 'watch-only wallet')
3. *Open a wallet from file* - Choosing this option you will have to select the file in the ".keys" format from a previus wallet
4. check *testnet* if you are going to make tests and not using the main net

## 1. Create new wallet
![new](/media/create_new.png)
Now give a name to your wallet (in this example is *testname*), write down your [mnemonic seed](https://getmonero.org/resources/moneropedia/mnemonicseed.html) and keep it safe. Your seed is the master key of your wallet, you can use it to recovery your funds.

### Add a password
![add password](/media/password.png)
Add a strong password to protect your wallet

### Summary
![summary](/media/summary.png)
Your wallet is created and almost ready to be used!
Check the summary to be sure everything went alright
&nbsp;

*Language* - The language you have chosen for your wallet    
*Wallet name* - The name of your wallet (and its file)    
*Backup Seed* - master key of your wallet, you can use it to recovery your funds. More info on the [Moneropedia](https://getmonero.org/resources/moneropedia/mnemonicseed.html)    
*Wallet path* - The path where your wallet is saved    
*Daemon address* - The address of the daemon. Default is `localhost:18081`. We will talk about this later.    
*testnet* - if *disabled* you are on the main net

### Run a full node
When the windows closes you will be prompted to the settings menu, but first, you will see a window like this popping up
![sync](/media/sync.png)
If you want to create a normal wallet using your personal full node, you don't need to do anything, let the countdown finish, then Wait untill your node is fully synced.

if you need some special settings like running a remote node, set up a view-only wallet or add manually the blockchain, go to section III: "Settings"


## 2. Restore Wallet from keys

## 3. Open a wallet from file

# III. Settings

![settings](/media/settings.png)
After creating/recovering your wallet, you will be prompted to the "settings page". From here you have the possibility tu personalize your configurations according to your personal use.

## Run a remote node
A remote node is the fastest way to start a wallet, but you won't have all the benefits of running a full local node. You also need to specify the address of the remote daemon

To run a remote node you need to use somebody else's daemon, this means you need to communicate with it. Add the remote daemon address and port (10) and click connect (e.g many use the remote nodes available at [moneroworld.com](https://moneroworld.com/#nodes). in this case the configuration would be `node.moneroworld.com` `18089`). Click on "connect" and your wallet will start syncing, this takes some minutes. To check the progresses click on "Show status"(7). 

## Create a view-only wallet
Click on (2) the following page will open
## Add manually the blockchain

## other options
