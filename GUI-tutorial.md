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

Make sure that al the infos are corrects and go to the next step

### Connect to local/remote daemon
When the windows closes you will be prompted to the settings menu, but first, you will see a window like this popping up
![sync](/media/sync.png)
At the end of the countdown the blockchain will start syncing locally. This is ok if you want to run a full node, storing the blockchain locally. You also have the choice to run your wallet using a 'remote node' (similar to 'light wallets' in bitcoin). If you prefer using a remote node, click on *Use custom settings* before the countdown ends.
A remote node is the fastest way to start a wallet, but you won't have all the benefits of running a full local node. You also need to specify the address of the remote daemon. This is explained in the section: 'settings' (-add link to next step skipping 2 and 3)
(link to differences full node - remote node)


## 2. Restore Wallet from keys

## 3. Open a wallet from file

# III. Settings / Connect to a remote node
![settings](/media/settings.png)
