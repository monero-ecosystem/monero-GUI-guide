# Preparation
When launching `monero-wallet-gui` on Windows, make sure your antivirus doesn't block the program and remember to give the wallet permissions to connect to the network (a window asking for permissions will popup the first time you start the wallet).

![win firewall check](/media/win-firewall-check.png)

# 1. Choose a Language
![Language](/media/language_new.png)

After extracting the package click on `monero-wallet-gui` you'll see a list of available languages, click on the one of your choice and go to the next step.

# 2. Create a Wallet
![welcome](/media/welcome.png)

On this page you can choose between three options:

**(1) Create a new wallet:** Start the procedure to make a new [wallet](https://getmonero.org/resources/moneropedia/wallet.html) from scratch. Choose this option if it's the first time you are creating a wallet.    
**(2) Restore wallet from keys or mnemonic seed:** Click here if you want to recover a pre-existing wallet using the mnemonic seed or the keys (this is also the option for creating a view-only wallet).    
**(3) Open a wallet from file:** Choosing this option you will have to select the file in the ".keys" format from a previous wallet.    
**(4) Testnet:** Check *testnet* if you are going make tests not using the main network.    

## 2.1. Create new wallet
![new](/media/create_new.png)

Now give a name to your wallet (in this example `testname` is used). **Write down your [mnemonic seed](https://getmonero.org/resources/moneropedia/mnemonicseed.html) and keep it safe. Your seed is the master key of your wallet, you can use it to recover your funds.**

### 2.1.1 Add a password
![add password](/media/password.png)

Add a strong password to protect your wallet. If you lose your password, then only your mnemonic seed can recover your wallet history and funds.

### 2.1.2 Daemon settings
![daemon settings](/media/daemon_settings.png)

Here you can choose if you are going to run a full node or use a remote one. If you want to use a remote node you need to put the hostname or IP address of the node and its port. Choosing a remote node, you have the optional possibility to add a personalized path for your blockchain.

### 2.1.4 Run a full node
Upon completion of the setup you will be prompted to the settings menu, but first you will see a window like this popping up:

![sync](/media/starting-local-node.png)

If you want to create a normal wallet using your personal full node, you don't need to do anything, let the countdown finish, then wait until your node is fully synced.

If you need some special settings like set up a view-only wallet or add the blockchain manually, go to section *3: Settings* in this guide.


## 2.2 Restore wallet from keys or mnemonic seed


### 2.2.1 Restoring from seed
![restore from seed](/media/restore_seed.png)

This is the easiest way to recover your wallet. You only need to put the following information:

**(1)** A name for it.    
**(2)** Paste your seed made of 25 words.    
**(3)** Select the destination folder of the wallet.    

### 2.2.2 Restoring from keys
![restore from key](/media/restore_key.png)

Restoring from keys is quite easy and can be extremely useful, especially if you are moving your wallet from online services like MyMonero. you need:

**Account address:** The address of the wallet you are recovering.    
**View key:** Your private view key (needed to be able to check your funds).    
**Spend key:** Your private spend key (needed to spend your funds).    
**Restore height:** This field is optional, it lets you specify a block height so the wallet wallet doesn't have to scan the entire blockchain looking for your funds. For example, if your first transaction was included in block `1350000`, insert in this field a slightly lower height (eg. `1330000`) so the wallet will start scanning from there, saving you some time.    

When everything is ready click the right arrow and then the "Use Monero" button.

## 2.3. Open a wallet from file
After clicking this option a window will pop up. Just navigate to your file with the extension *.keys*, select it and click the right arrow.

# 3. Settings
![settings](/media/settings.png)

After creating/recovering your wallet, you will be prompted to the "Settings" page. From here you have the possibility to personalize your configurations.

**(1)** Close your wallet (gives the possibility to choose another language).    
**(2)** Insert a name and a password if you want to create a view-only wallet.    
**(3)** Make a complete rescan of your spent outputs.    
**(4)** Change the password of your wallet.    
**(5)** Manage settings for your local node.    
**(6)** Manage settings for your remote node.    
**(7)** Show advanced options ('Local daemon startup flags' and 'node login', in case the remote node requires authentication).    
**(8)** Start your local node.    
**(9)** Show daemon status.    
**(10)** Remote node address and port.    

## 3.1. Use a remote node
Using a remote node is the fastest way to start a wallet, but you won't have all the benefits of running a full local node. You also need to specify the address of the remote daemon.

To use a remote node you need to use somebody else's daemon, this means you need to communicate with it. Add the remote daemon address and port (10) and click connect. A collection of remote nodes is available at [moneroworld.com](https://moneroworld.com/#nodes) (in this example address `node.moneroworld.com` and port `18089` are used). Click on "connect" and your wallet will start syncing, this takes some minutes. To check the progresses click on "Show status" (9) or check in the lower left corner.

## 3.2. Create a view-only wallet
Click on (2), you will be asked to give a name and a location for your view-only wallet. Proceed setting a strong password then click the right arrow. A "Success" message will signal the correct creation of the view-only wallet.

## 3.3. Add the blockchain manually

## 3.4. Show seed & keys
This shows your wallets mnemonic seed as well as your secret view key, public view key, secret spend key and public spend key. These are outlined below.

## 3.4.1. Mnemonic seed
**DO NOT share your mnemonic seed with anyone. Store a copy securely.** The mnemonic seed is a 25 word phrase that contains all the information needed to view and spend funds. Learn more about [mnemonic seeds](https://getmonero.org/resources/moneropedia/mnemonicseed.html).

### 3.4.2. Public/secret view key
Secret view keys allow you and others to view your Monero wallets incoming transactions (not outgoing). It is sometimes useful for auditing purposes to give your secret view key to a third party. The public spend key is used for stealth address creation. Learn more about [view keys](https://getmonero.org/resources/moneropedia/viewkey.html).

### 3.4.3. Public/secret spend key
**DO NOT share your secret spend key with anyone. The secret spend key is used to sign transactions and should be regarded with the same security as your mnemonic seed.** The public spend key is used by the network to verify the signature of the key image you generated. This is what prevents double-spends as the network enforces the rule that a key image can be spent only once. Learn more about [spend keys](https://getmonero.org/resources/moneropedia/spendkey.html).

### 3.4.4. Re-scan wallet balance
This scans the Monero blockchain for any funds that belong to you.


# 4. Send Some Moneroj
![send](/media/send.png)

After clicking the "Send" tab on the left menu, you need to specify the following:

**Amount:** This is how much Monero you want to send.

**Transaction priority:** This is the priority your transaction will get in the mempool of transactions waiting to be into a block on the Monero blockchain. The more you pay the more likely you will get included in the next block. Which means that your transaction will verify faster. Currently just staying with the default or even using the slow option is likely to get you into the next block.

**Address:** This is where you put the Monero address you are sending to. The best practice is to copy and paste addresses to prevent errors, but visually double check the pasted address is correct.

**Payment ID:** The payment ID is an identity attached to the transaction you are about to send. Often when sending to an exchange they will give you a payment ID that you must include here. This is so they know which incoming transaction is from you.

*If you forget to add your payment ID you should still be able to recover your funds by contacting the party you sent Monero to.*

**Description:** This is for your record keeping. You can add some information regarding your transaction for future reference.

**Privacy level (ringsize):** This setting increases the size of the ring signatures in your transaction. Higher ring sizes *may* increase privacy of the transaction but it also increases the fees. I would recommend leaving this as the default 5. Learn more about [ring signatures](https://getmonero.org/resources/moneropedia/ringsignatures.html).

**Sweep unmixable:** This allows you to get rid of outputs in your wallet which have strange amounts like `0.000006839355` which are unmovable without combining them with another output. You will more than likely never need to use this feature.

**Sign tx file:** This button allows you to cryptographically sign a file with your private key. This is useful if you want to verify a transaction on an offline wallet.

## 4.1. Address Book
This section lets you save users you frequently transact with. Addresses you put in your address book can be easily copied over when sending a transaction.

# 5. Receive Moneroj
![receive](/media/receive.png)

To receive Moneroj you need to give your address. Best practice is to create a new address each time you receive. Once you click 'Create new address' you will be prompted to enter an optional label for your records. You may also specify:

**Amount:** The amount of Monero you would like to receive.

**QR code:** This is a QR code that has your selected address, and optionally the amount, embedded into it. It can be used as a way to give others your Monero address by simply scanning the code.

# 6. Advanced Features

## 6.1. Solo mining
![mining](/media/mining.png)

This is a one click CPU miner that is embedded into the GUI. Having this on helps secure the Monero network. The more people that mine, the harder it is for the network to be attacked.

It is very unlikely that you will receive rewards from doing this, but it is not outside the realm of possibility.

## 6.2. Prove/check
![Check payment](/media/prove-check.png)

When you send or receive monero you will sometimes find the need to be able to prove or verify that the payment was made.

With Bitcoin this is typically done by looking up the transaction ID where the origin addresses, destination addresses, and the amount transacted transacted are all visible.

Monero, however, is private and that information is not available publicly on the blockchain. The steps are therefore a bit more involved.

### 6.2.1. Generate proof of payment
This will generate a proof that you made a payment to a certain address. You need to put the following information:

**Transaction ID:** This is the ID of the payment you are creating proof for. You can find the transaction details by selecting the "History" tab from the left menu.    
**Address:** This is the address you are proving payment to.    
**Message:** This an optional message that will be signed with the transaction details. If you choose to include a message then the other party must also include the exact same message in order to verify your proof.    

After clicking the "Generate" button, you will receive the proof which can then be used to verify a payment was made. The screen will look like this:

![pay prove](/media/pay-prove.png)

### 6.2.2. Check proof of payment
This will verify that a payment was made. You need to put the following information:

**Transaction ID:** This is the ID of the payment you are attempting to verify.    
**Address:** This is the receiving address of the payment you are attempting to verify.    
**Message:** This is the optional message that may have been included with the proof.    
**Signature:** This is the signature generated to prove payment.    

This is what should appear after entering the valid payment details and clicking the "Check" button:

![pay verify](/media/pay-verify.png)

## 6.3. Sign/verify
![sign/verify](/media/sign-verify.png)

In this section you can sign a message or file with your private key. The signed message or file can be used to prove you have ownership of your Monero public key. This is a way to prove accountability without having to sacrifice anonymity.

This is also where you can verify a signed message or file.

### 6.3.1. Sign a message or file contents with your address

**Message or file:** This is where you will write your message (top box) or attach a file (second box). Upon clicking on "sign" you will generate a signature.

**Signature:** This is where your unique signature will appear once you click the "Sign" button. This is linked to your private key and the message or file you entered. It will be given as proof along with the message or file which was signed.

### 6.3.2. Verify a message or file signature from an address:

**Message or file:** This is where you will put a message or file that has been signed.

**Signing address:** This is where you will put the public Monero address you are wanting to verify.

**Signature:** This is where you will put the signature.

Once all the required information has been entered click the "Verify" button. You should get a notification like this if the signature is good:

![good signature](/media/good-sig.png)

# Common issues and solutions

+ [I am missing (not seeing) a transaction to (in) the GUI (zero balance)](https://monero.stackexchange.com/questions/6640/i-am-missing-not-seeing-a-transaction-to-in-the-gui-zero-balance)
+ [I am using the GUI and my daemon doesn't start anymore](https://monero.stackexchange.com/questions/6825/i-am-using-the-gui-and-my-daemon-doesnt-start-anymore)
+ [Transaction stuck as “pending” in the GUI](https://monero.stackexchange.com/questions/6649/transaction-stuck-as-pending-in-the-gui)
+ [My GUI feels buggy / freezes all the time](https://monero.stackexchange.com/questions/6651/my-gui-feels-buggy-freezes-all-the-time)
+ [My name contains a special (non-ASCII) character (e.g. é, ø, â, Ö) and I can't create a wallet with the GUI](https://monero.stackexchange.com/questions/6823/my-name-contains-a-special-non-ascii-character-e-g-%c3%a9-%c3%b8-%c3%a2-%c3%96-and-i-cant-c)
+ [The GUI uses all my bandwidth and I can't browse anymore or use another application that requires internet connection](https://monero.stackexchange.com/questions/6653/the-gui-uses-all-my-bandwidth-and-i-cant-browse-anymore-or-use-another-applicat)
+ [How do I move the blockchain (data.mdb) to a different directory during (or after) the initial sync without losing the progress?](https://monero.stackexchange.com/questions/7225/how-do-i-move-the-blockchain-data-mdb-to-a-different-directory-during-or-afte)
+ [How do I change the language of the 25 word mnemonic seed in the GUI or CLI?](https://monero.stackexchange.com/questions/7373/how-do-i-change-the-language-of-the-25-word-mnemonic-seed-in-the-gui/)
+ [My blockchain is stuck, how do I “unstuck” it?](https://monero.stackexchange.com/questions/4462/my-blockchain-is-stuck-how-do-i-unstuck-it)
+ [I am using remote node, but the GUI still syncs blockchain?](https://monero.stackexchange.com/questions/6324/using-remote-node-still-syncs-blockchain)
