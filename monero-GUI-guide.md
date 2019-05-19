-   [Preface](#preface)
    -   [Translations](#translations)
    -   [Windows Preparation](#windows-preparation)
    -   [Shortcuts](#shortcuts)
-   [Welcome](#welcome)
    -   [Choose a Language](#choose-a-language)
    -   [Choose wallet mode](#choose-wallet-mode)
    -   [About the Simple/Bootstrap
        mode](#about-the-simplebootstrap-mode)
-   [Create a Wallet](#create-a-wallet)
    -   [Create new wallet](#create-new-wallet)
        -   [Add a password](#add-a-password)
        -   [Daemon settings
            (Advanced mode)](#daemon-settings-advanced-mode)
        -   [Run a full node](#run-a-full-node)
    -   [Create new wallet from
        hardware](#create-new-wallet-from-hardware)
        -   [Create the wallet](#create-the-wallet)
        -   [Add a password](#add-a-password-1)
        -   [Daemon settings
            (Advanced mode)](#daemon-settings-advanced-mode-1)
        -   [Run a full node](#run-a-full-node-1)
    -   [Restore wallet from keys or mnemonic
        seed](#restore-wallet-from-keys-or-mnemonic-seed)
        -   [Restoring from seed](#restoring-from-seed)
        -   [Restoring from keys](#restoring-from-keys)
    -   [Open a wallet from file](#open-a-wallet-from-file)
-   [Monero Account](#monero-account)
-   [Send Monero](#send-monero)
    -   [Address Book](#address-book)
-   [Receive Monero](#receive-monero)
    -   [Merchant view](#merchant-view)
-   [Transaction History](#transaction-history)
-   [Advanced Features](#advanced-features)
    -   [Solo mining](#solo-mining)
    -   [Prove - Check](#prove---check)
        -   [Prove Transaction](#prove-transaction)
        -   [Check Transaction](#check-transaction)
    -   [Shared RingDB](#shared-ringdb)
    -   [Sign - verify Message](#sign---verify-message)
        -   [Sign](#sign)
        -   [Verify](#verify)
    -   [Sign - verify File](#sign---verify-file)
        -   [Sign](#sign-1)
        -   [Verify](#verify-1)
-   [Settings](#settings)
    -   [Wallet](#wallet)
    -   [Layout](#layout)
    -   [Local Node](#local-node)
    -   [Remote Node](#remote-node)
    -   [Log](#log)
    -   [Info](#info)
    -   [Seed and keys](#seed-and-keys)
-   [Binaries Verification](#binaries-verification)
-   [About remote nodes](#about-remote-nodes)
    -   [Bootstrap nodes](#bootstrap-nodes)
-   [Common issues and solutions](#common-issues-and-solutions)

Preface
=======

This guide is open source and maintained by ErCiccione, of the Monero
community. If you have suggestions or wish to contribute to the
development of this guide, feel free to open Pull Requests or Issues on
the GitHub repository where this document is maintained:
[github.com/monero-ecosystem/monero-GUI-guide](https://github.com/monero-ecosystem/monero-GUI-guide).
 

For the online version of this guide, click
[here](https://github.com/monero-ecosystem/monero-GUI-guide/blob/master/monero-GUI-guide.md)

Translations
------------

This document will be localized into several languages. You will find
all available translations in the [dedicated section on
GitHub](https://github.com/monero-ecosystem/monero-GUI-guide/tree/master/translations)
after the next version (1.6) of this guide will be released.

Windows Preparation
-------------------

If you are on Windows:

-   Make sure that your antivirus does not block the program.

A miner is included in the Monero GUI software and, as a result, most
anti virus software flags the Monero GUI files as malware and
subsequently quarantines them. Fortunately, however, there's a fairly
trivial work around you can use. That is:

-   Create a new directory / folder.
-   Open your AV software.
-   Add an exception for the newly created directory / folder. Put
    differently, you have to whitelist the newly created directory
    / folder.
-   Extract the .zip file (in case of Windows) or the .tar.bz2 file (in
    case of Linux or Mac OS X) to the whitelisted directory / folder.

*Note:* if you're using Windows and did not install custom anti virus
software, Windows Defender is, most likely, acting as active anti virus
software.

-   The first time you start the wallet you must give permission to
    connect to the network via a pop-up. Check the appropriate boxes and
    click `Allow access`.

![win firewall check](media/win-firewall-check.png)

Shortcuts
---------

Some shortcuts are available to make the user experience with the GUI
easier:  

**On all operating systems:**\
Press `Ctrl` to view each page shortcut. Press `ctrl+"shortcut"` to go
to that page  

**On Linux/Windows:**\
`ctrl + tab` -&gt; go to the next page\
`ctrl + shift + tab` -&gt; go to the previous page  

**On macOS:**\
`cmd + tab` -&gt; go to the next page\
`cmd + shift + tab` -&gt; go to the previous page

Welcome
=======

![Welcome](media/wizard_0-welcome.png)

Extract the package and click on `monero-wallet-gui`.

Welcome to Monero GUI Wallet.

(1) **Language:** Click here to see a list of available languages.\
(2) **Continue:** If you are satisfied with the current language,
    continue to the next screen.

Choose a Language
-----------------

![Language](media/wizard_1-lang.png)

You'll see a list of available languages, click on the one of your
choice to change it and continue from the welcome screen. *Note:* You
will be able to change the language later by clicking on the *flag* in
the upper-left corner.

(1) **Close:** Cancel and return to the previous screen.

Choose wallet mode
------------------

![mode](media/wizard_1_1-mode.png)

This page lets you choose the mode that best suits your accessibility
and privacy needs.\
*Note:* Stagenet and Testnnet only supports *Advanced mode*.

(1) **Simple mode:** This mode will connect your wallet to a
    remote node. Please note that remote nodes may weaken your privacy.
    Choose this if you have low privacy requirement, need to quickly
    access the Monero network, and only intend to manage small amount of
    Monero.\
(2) **Simple mode (bootstrap):** This mode is similar to the previous
    one, as it will connect you to a remote node, but will download the
    blockchain to your local drive in the background. As soon as you
    have a local copy of the entire blockchain, you will be connected to
    your local node. It allows you to start using Monero immediately and
    have a fallback option if your local blockchain needs to sync new
    blocks while offering the privacy benefits of a full node when fully
    synced.\
(3) **Advanced mode:** Using this mode will let you run a full node,
    which downloads and maintains an entire copy of the blockchain. Your
    wallet will not be usable until your local copy of the blockchain is
    fully synchronized. Choose this mode if the maximum privacy matters
    to you.\
(4) **Change language:** This will let you choose the language from the
    startup page (again).

About the Simple/Bootstrap mode
-------------------------------

![acknowledgement](media/wizard_1_2-warning.png)

Upon choosing simple mode or bootstrap mode, an acknowledgement page
will be shown, explaining the features, behavior, and privacy
constraints of the mode.\
Please carefully read those informations before accepting the
implications of this mode and proceed to the next step.\
You must understand the inherent risks of using a remote node for your
privacy, and you should avoid using it with large amounts of money. If
you connect to a *malicious* remote node, it could track your IP
address, your "restore height" and associated block request data, and
send you inaccurate information to learn more about transactions you
make.

(1) **Region:** Choose a region to pick up the remote nodes from. The
    closer the node is, the better the wallet performance will be.\
(2) **Acknowledgement:** Check This box if you have **fully understood**
    the privacy implications of a remote node and agree to **weaken your
    privacy** by using it.

Create a Wallet
===============

![welcome](media/wizard_2-options.png)

On this page you can choose how to connect to the wallet and to the
network:

(1) **Create a new wallet:** Start the procedure to make a new wallet.
    Choose this option if this is your first time using Monero.\
(2) **Create new wallet from hardware:** Create a new wallet from an
    hardware device (like Ledger or Trezor)\
(3) **Open a wallet from file:** Choose this option to select a
    pre-existing wallet from your files with the extension `.keys`.\
(4) **Restore wallet from keys or mnemonic seed:** Click here if you
    want to recover a pre-existing wallet using the mnemonic seed or the
    keys.\
(5) **Change wallet mode:** Click here to switch between modes and
    choose the wallet mode that best fits your needs.\
(6) **Mainnet:** *Advanced:* Select this from the dropdown list to use
    the main Monero network\
(7) **Testnet:** *Advanced:* Select this from the dropdown list if you
    would like to use a development network instead of the main network.
    Testnet is designed to let developers test new features that are not
    available on Mainnet or Stagenet.\
(8) **Stagenet:** *Advanced:* Select this from the dropdown list if you
    would like to use a network for staging instead of the main network.
    Stagenet mimics the features of Mainnet and is designed to let end
    users test Monero without the risk of losing funds.\
(9) **Number of KDF rounds:** *Advanced:* Adjust the number of Key
    Derivation Function rounds in order to enhance the overall security
    of the generated keys. Any random large number will increase
    the security.

Create new wallet
-----------------

![new](media/wizard_3-create.png)

Here you can create a new wallet:

(1) **Wallet name:** Give a name for your wallet (in this example
    `testname` is used).\
(2) **Mnemonic seed: Write down your [mnemonic
    seed](https://getmonero.org/resources/moneropedia/mnemonicseed.html)
    and keep it safe. Your seed is the master key of your wallet, you
    can use it to recover your funds.**\
(3) **Wallet location:** Select the destination folder of the wallet.

### Add a password

![add password](media/wizard_4-pass.png)

Add a strong password to protect your wallet. If you lose your password,
then only your mnemonic seed can recover your wallet.

### Daemon settings (Advanced mode)

![daemon settings](media/wizard_5-daemon-settings.png)

Here you can choose if you are going to run a full node or use a remote
one:

(1) **Start node in background:** Check this box to run a full node and
    begin blockchain sync.\
(2) **Blockchain location (optional):** To store the blockchain
    somewhere other than default, enter that location here.\
(3) **Bootstrap node:** To use a bootstrap node enter the host and port.
    A bootstrap node allows you to use your wallet while you are
    downloading the blockchain by connecting to a remote node. For a
    list of available remote nodes and info about them, check the [About
    remote nodes](#about-remote-nodes) section of this guide.\
(4) **Connect to a remote node:** Check this box if you want to use only
    a remote node without downloading the blockchain. You will need to
    put the host and port of the remote node after checking the box.

### Run a full node

Upon completion of the setup you will be prompted to the settings menu,
but first you will see a window like this pop up:

![sync](media/daemon-launch.png)

If you want to create a normal wallet using your personal full node, you
don't need to do anything, let the countdown finish, then wait until
your node is fully synced.\
If you need some special settings, like setting up a view-only wallet or
adding the blockchain manually, go to [Settings](#settings).

Create new wallet from hardware
-------------------------------

### Create the wallet

![2.4.1](media/create_hardware_wallet.png)

(1) **Wallet name:** Give a name for your wallet (in this example
    `ledger-test` is used).\
(2) **Wallet location:** Select the destination folder of the wallet.\
(3) **Create a new wallet from device:** Select this option if this is
    the first time you use a hardware wallet.\
(4) **Restore a wallet from device:** Choose this option if you already
    had a hardware wallet and want to restore it.\
    **Creation Date or Restore height (optional):** *Restore only:* If
    you know the date or block height that your wallet was created at,
    you can specify it here so the wallet doesn't have to scan the
    entire blockchain looking for your funds. For example, if your first
    transaction was included on `2017-07-08` in block `1350000`, you
    should put the previous day date (e.g. `2017-07-06`) or a slightly
    lower height (e.g. `1330000`) so the wallet will start scanning from
    there, saving you some time. More information about restore height
    on
    [StackExchange](https://monero.stackexchange.com/questions/7581/what-is-the-relevance-of-the-restore-height).\
(5) **Subaddress lookahead (optional):** pregenerate a number of
    accounts with a number of subaddresses each.\
(6) **Device name:** Select the hardware wallet you want to use.\
     

Step by step guide on how to generate a Ledger wallet with the Monero
GUI for all operating systems (StackExchange):\
[How do I generate a Ledger Monero wallet with the GUI
(monero-wallet-gui)?](https://monero.stackexchange.com/questions/9901/how-do-i-generate-a-ledger-monero-wallet-with-the-gui-monero-wallet-gui)

### Add a password

![add password](media/wizard_4-pass.png)

Add a strong password to protect your wallet. If you lose your password,
then only your mnemonic seed can recover your wallet.

### Daemon settings (Advanced mode)

![daemon settings](media/wizard_5-daemon-settings.png)

Here you can choose if you are going to run a full node or use a remote
one:

(1) **Start node in background:** Check this box to run a full node and
    begin blockchain sync.\
(2) **Blockchain location (optional):** To store the blockchain
    somewhere other than default, enter that location here.\
(3) **Bootstrap node:** To use a bootstrap node enter the host and port.
    A bootstrap node allows you to use your wallet while you are
    downloading the blockchain by connecting to a remote node. For a
    list of available remote nodes and info about them, check the [About
    remote nodes](#about-remote-nodes) section of this guide.\
(4) **Connect to a remote node:** Check this box if you want to use only
    a remote node without downloading the blockchain. You will need to
    put the host and port of the remote node after checking the box.

### Run a full node

Upon completion of the setup you will be prompted to the settings menu,
but first you will see a window like this pop up:

![sync](media/daemon-launch.png)

If you want to create a normal wallet using your personal full node, you
don't need to do anything, let the countdown finish, then wait until
your node is fully synced.\
If you need some special settings, like setting up a view-only wallet or
adding the blockchain manually, go to [Settings](#settings).

Restore wallet from keys or mnemonic seed
-----------------------------------------

### Restoring from seed

![restore from seed](media/wizard_6-restore-seed.png)

Restoring from your mnemonic seed is the easiest way to recover your
wallet. You need to put the following information:

(1) **Wallet name:** Give a name for your wallet (in this example
    `testname` is used).\
(2) **Mnemonic seed:** Paste your seed made of 25 (or 24) words.\
(3) **Creation Date or Restore height (optional):** If you know the date
    or block height that your wallet was created at, you can specify it
    here so the wallet doesn't have to scan the entire blockchain
    looking for your funds. For example, if your first transaction was
    included on `2017-07-08` in block `1350000`, you should put the
    previous day date (e.g. `2017-07-06`) or a slightly lower
    height (e.g. `1330000`) so the wallet will start scanning from
    there, saving you some time. More information about restore height
    on
    [StackExchange](https://monero.stackexchange.com/questions/7581/what-is-the-relevance-of-the-restore-height).\
(4) **Wallet location:** Select the destination folder of the wallet.

A detailed guide is available on getmonero.org: ['How to restore your
account'](https://getmonero.org/resources/user-guides/restore_account.html)

### Restoring from keys

![restore from key](media/wizard_7-restore-keys.png)

Restoring from keys is quite easy and can be extremely useful,
especially if you are moving your wallet from an online service like
MyMonero. You need to put the following information:

(1) **Wallet name:** Give a name for your wallet (in this example
    `testname` is used).\
(2) **Account address:** The address of the wallet you are recovering.\
(3) **View key:** Your private view key (needed to be able to check your
    funds).\
(4) **Spend key:** Your private spend key (needed to spend your funds).\
(5) **Creation Date or Restore height (optional):** If you know the date
    or block height that your wallet was created at, you can specify it
    here so the wallet doesn't have to scan the entire blockchain
    looking for your funds. For example, if your first transaction was
    included on `2017-07-08` in block `1350000`, you should put the
    previous day date (e.g. `2017-07-06`) or a slightly lower
    height (e.g. `1330000`) so the wallet will start scanning from
    there, saving you some time. More information about restore height
    on
    [StackExchange](https://monero.stackexchange.com/questions/7581/what-is-the-relevance-of-the-restore-height).\
(6) **Wallet location:** Select the destination folder of the wallet.

When everything is ready click the right arrow and then the `Use Monero`
button.\
A detailed guide is available on getmonero.org: ['Restoring wallet from
keys'](https://getmonero.org/resources/user-guides/restore_from_keys.html)

Open a wallet from file
-----------------------

After clicking this option a window will pop up. Navigate to your file
with the extension `.keys`, select it and click the right arrow.

Monero Account
==============

![account](media/black_account.png)

The `Account` tab provides tool to handle your different Monero accounts
within your wallet.

(1) **Balance All:** Let you see the sum of all your accounts balances,
    unlocked or not.\
(2) **Accounts:** This is the list of accounts already generated on your
    wallet.\
(3) **Create new account:** Click on this button to create a new account
    and set its *optional* label.

You can change the current account by simply clicking on it on the
list.\
Each of your accounts are filled with their own informations:

(4) **Label:** A name or description of the account for convenience.\
(5) **Address:** The account primary address. *Note: Primary account
    addresses and secondary account addresses have different heading
    numbers*\
(6) **Balance:** The account total balance. It cumulates the main
    address and all subaddresses for this account. *Note: Subaddresses
    are managend through the [Send](#send-monero) screen*\
(7) **Set Label:** Click on this button to set this account label.\
(8) **Copy Address:** Click on this button to copy this account address
    to the clipboard

Send Monero
===========

![send](media/black_send.png)

The `Send` tab provides tools for creating outgoing transactions.

(1) **Amount:** This is how much Monero you want to send.\
(2) **Transaction priority:** This is the priority level your
    transaction will receive in the pool of transactions waiting to
    be confirmed. The more you pay, the higher your transactions
    priority for inclusion in a block.\
    *Currently staying with the default or the slow option is likely to
    get you into the next block.*\
(3) **Address:** This is where you put the Monero address that you are
    sending to. Best practice is to copy and paste the address to
    prevent errors, accompanied with visually checking that the pasted
    address is correct.\
(4) **Payment ID (optional):** The payment ID is an identifier attached
    to the transaction you are about to send. Often when sending to an
    exchange they will give you a payment ID that you must include here.
    This is so they know which incoming transaction is from you.\
    *If you forget to add your payment ID you should still be able to
    recover your funds by contacting the party you sent Monero to.*\
    *Long payment IDs are being deprecated. It is hidden by default. If
    you need to specify a long payment ID, you should enable it first on
    the [Settings &gt; Layout](#layout) tab. You should encourage
    services to accept payments that need to be identified with unique
    subaddresses instead*\
(5) **Description (optional):** This is for your record keeping. You can
    add some information regarding your transaction for future
    reference.\
(6) **Sweep unmixable:** This allows you to get rid of outputs in your
    wallet which have strange amounts like `0.000006839355`. These are
    unmovable without combining them with another output.\
    *Most users will never need to use this feature.*\
(7) **Sign tx file:** This button allows you to sign a transaction file
    that was created on a view-only wallet.\
(8) **Export key images:** This option will allow you to export your
    key images. They are needed to get the true balance of a
    view-only wallet.

Address Book
------------

The `Address Book` tab lets you save addresses that you frequently
transact with. This is a convenient place to copy addresses from when
creating transactions.

Receive Monero
==============

![receive](media/black_receive.png)

The `Receive` tab provides tools for generating subaddresses.

(1) **Addresses:** This is a list of your primary address and
    subaddresses.\
(2) **Create new address:** This button allows you to create
    new subaddresses. You can create as many as you would like. *Learn
    more about
    [subaddresses](https://monero.stackexchange.com/questions/3673/what-is-a-sub-address).*\
(3) **Set Label:** Click on this button to set this subaddress label.\
(4) **QR code:** This is a QR code that has your selected address
    embedded into it. It can be used as a way to give others your Monero
    address by scanning the code.\
(5) **Save:** Click here to save the QR code as a `png` image.\
(6) **Copy:** Click here to copy the QR code corresponding URL formated
    as \*monero:
    <address>
    -   

Merchant view
-------------

![merchant](media/merchant.png)

The `Merchant` view is intending to offer professionals a nice app on
their points of sell. It let you craft payment requests, and monitor
incoming transactions

(1) **QR code:** This is a QR code that has your selected address, and
    optionally the amount, embedded into it. It can be used as a way to
    give others your Monero address by scanning the code.\
(2) **Amount:** This is for creating a payment request, enter the amount
    of Monero you would like to receive.\
(3) **Payment URL:** This is the URL corresponding to the address and
    amount you have chosen. It could be copied by clicking on it and
    sent to a customer.\
(4) **Tracking:** If you tick this box, you'll see a list of incoming
    transactions.\
(5) **Incoming transaction:** Those are the transaction currently seen
    on the blockchain and the transaction pool, with
    associated confirmations.

Transaction History
===================

![history](media/black_history.png)

The `History` tab let you walk through the transactions sent and
received on your account.

(1) **Export:** This will create a CSV file of the record in a folder of
    your choice.\
(2) **Search:** Quickly find a transaction using any field to look up
    from.\
(3) **Filters:** You can choose to filter out the transaction between
    specific dates. This can be useful if your wallet has tons of
    transactions.\
(4) **Sort:** You can sort transaction by block height or date. *Those
    methods are actually equivalent*\
(5) **Transaction list:** Here are displayed your transactions on
    this account. Each transaction is displayed with it's informations:
    `Amount`, `Tx ID`, `Height`, `Date`, `Fee` (for outgoing
    transactions), and `Description` *Optional*.\
(6) **Set description:** You can optionally click here to set a
    description of your choice to this transaction.\
(7) **Prove transaction:** Clicking here will generate a payment proof
    in case of a dispute. More details on proving payments can be found
    [here](https://getmonero.org/resources/user-guides/prove-payment.html)
    *For outgoing transaction only*\
(8) **Details:** Clicking here will show you the transaction details:
    `Tx ID`, `Address Label`, `Address`, and `Payment ID`.

Advanced Features
=================

Solo mining
-----------

![mining](media/black_mining.png)

The Mining tab provides a one click CPU miner that is embedded into the
GUI.

(1) **CPU threads:** Number of CPU threads to use for mining.\
(2) **threads auto-configuration:** Set automatically the number of
    threads either to the recommended number, or to the max number.\
(3) **Background mining:** Check this box to enable experimental
    background mining. This should allow you to use your computer
    normally while mining.\
(4) **Start mining:** Start the miner.\
(5) **Stop mining:** Stop the miner.\
(6) **Status:** Indicates the mining state and hashrate.

Prove - Check
-------------

The `Prove/check` tab provides tools for proving a payment or validating
proof of a payment. This is necessary with Monero because these details
are not available on the blockchain.

### Prove Transaction

![Prove payment](media/black_prove.png)

This will generate a proof that you made a payment to a certain address.
You need to put the following information:

(1) **Transaction ID:** This is the ID of the payment you are creating
    proof for. You can find the transaction details by selecting the
    History tab from the left menu.\
(2) **Address:** This is the address you are proving payment to.\
(3) **Message (optional):** This an optional message that will be signed
    with the transaction details. If you choose to include a message
    then the other party must also include the exact same message in
    order to verify your proof.\
(4) **Generate:** Click here once you've entered all the details to
    generate your proof.  

A detailed guide is available on getmonero.org: ['How to prove
payment'](https://getmonero.org/resources/user-guides/prove-payment.html)

### Check Transaction

![Check payment](media/black_check.png)

This will verify that a payment was made. You need to put the following
information:

(1) **Transaction ID:** This is the ID of the payment you are attempting
    to verify.\
(2) **Address:** This is the receiving address of the payment you are
    attempting to verify.\
(3) **Message (optional):** This is the optional message that may have
    been included with the proof.\
(4) **Signature:** This is the signature generated to prove payment.\
(5) **Check:** Click here once you've entered all the details to check
    that the transaction proof is valid.

Shared RingDB
-------------

![shared ringdb 1/2](media/black_sharedringdb.png)

This is an advanced tool that can be used to improve the privacy of ring
signatures. The outputs used in ring signatures can be adapted to
mitigate the privacy loss when using a key-reusing fork or to avoid
outputs that could not be spent in this transaction.

(1) **Mark as spent filename:** This tool will mark outputs that are
    known to be spent. After running
    monero-blockchain-mark-spent-outputs, import the resulting file to
    avoid using these outputs as decoys in constructed ring signatures.
    This file is stored in the .shared-ringdb folder by default.\
(2) **Mark as spent output:** This will mark or unmark as spent a chosen
    single output. Outputs are represented by 64-character strings. The
    outputs added in this field will not be used as decoys in
    constructed ring signatures. Unmarked outputs may (but will
    not necessarily) by used as decoys.

![shared ringdb 2/2](media/black_sharedringdb_2.png)

(3) **Key image input:** Add the key image that was used on the
    key-reusing fork.\
(4) **Get ring:** Press the "Get Ring" button to get the ring members
    for the given key image in 3.\
(5) **Set ring:** Press the "Set Ring" button to set the ring members
    for a transaction. Copy the ring members from 4 to get those for the
    key image, or manually type in your own.\
(6) **Intent to spend:** Select this if you are certain that you will
    spend Monero on a key-reusing fork. This will aggressively modify
    the input selection algorithm to give you the greatest plausible
    deniability.\
(7) **Possibility to spend:** Select this if you may spend Monero on a
    key-reusing fork. This will modify the input selection algorithm.
    Uncheck this only if you are certain you will not use a key-reusing
    fork.\
(8) **Relative:** When selected, the offsets are encoded relative to the
    previous, as opposed to absolute (transactions use relative
    offsets).\
(9) **Segregation height:** The block height at which the key-reusing
    fork splits.

Sign - verify Message
---------------------

![sign/verify](media/black_sign-verify.png)

The `Sign/verify` tab provides tools for signing a message or file with
your private key or verifying the authenticity of a singed message or
file.

### Sign

(1) **Message:** This is where you can enter a message to be signed.\
(2) **Signature:** This is where your unique signature will appear once
    you click the Sign button. This is linked to your private key and
    the message you entered. It will be given as proof along with the
    message which was signed.

### Verify

(3) **Verify message:** This is where you will put a message that has
    been signed.\
(4) **Address:** This is where you will enter the public Monero address
    of the signer.\
(5) **Signature:** This is where you will enter the signature you
    are verifying. Once all the required information has been entered
    click the Verify button. A pop-up will tell you if the signature
    is valid.

Sign - verify File
------------------

![sign/verify](media/black_sign-verify-file.png)

The `Sign/verify` tab provides tools for signing a message or file with
your private key or verifying the authenticity of a singed message or
file.

### Sign

(1) **File:** This is where you can choose a file to be signed. Click
    Browse to navigate the file system.\
(2) **Signature:** This is where your unique signature will appear once
    you click the Sign button. This is linked to your private key and
    the file you entered. It will be given as proof along with the file
    which was signed.

### Verify

(3) **File:** This is where you enter the path to a file that has
    been signed. Click Browse to navigate the file system.\
(4) **Address:** This is where you will enter the public Monero address
    of the signer.\
(5) **Signature:** This is where you will enter the signature you
    are verifying. Once all the required information has been entered
    click the Verify button. A pop-up will tell you if the signature
    is valid.

Settings
========

The `Settings` tab provides tools for customizing configuration options.

### Wallet

![settings-wallet](media/black_settings-wallet.png)

(1) **Close this wallet:** Click here to safely close the current
    wallet\
(2) **Create a view-only wallet:** Click here to generate a view-only
    (or audit) wallet, which is capable to see existing outgoing
    transactions and all incoming transactions. See this
    [user-guide](https://getmonero.org/resources/user-guides/view_only.html)
    for more information.\
(3) **Show seed & keys:** This button will redirect you to the [Seed and
    keys](#seed-and-keys) tab.\
(4) **Rescan wallet balance:** Click here to rescan the blockchain for
    all the transaction. *Note: You will lose any information not stored
    on the blockchain (this includes destination addresses, tx secret
    keys, tx notes, etc.)*\
(5) **Change wallet password:** Click here to change your password.

### Layout

![settings\_layout](media/black_settings-layout.png)

The `layout` tab is where you can adjust the settings of the GUI wallet.
The most important options are:

(1) **Hide balance:** If you are running your wallet in public, you may
    want to hide its balance. This can be useful for point of sales
    systems.\
(2) **Enable Payment ID:** Long payment IDs are disabled by default.
    Click here to enable it. This can be useful for transfers to
    exchanges that require a long payment ID such as Binance (at the
    time of writing). Using long payment IDs is detrimental to
    your privacy. Please ask services that still use this deprecated
    feature to use subaddresses instead.\
(3) **Lock wallet:** Set this to automatically lock your wallet after N
    minutes of inactivity. This ensures no one is able to use your
    wallet while you are away from keyboard.

### Local Node

![settings\_local-node](media/black_settings-node-local_node.png)

(1) **Start/Stop Local Node:** Depending on its current state, either
    start or stop the local node.\
(2) **Blockchain location:** Manually enter a non-default path to the
    blockchain, or click `change` to choose a new path.\
(3) **Startup flags:** When using a local node, this will be where you
    enter additional command line options.\
(4) **Bootstrap Address:** Enter the hostname or IP address of the
    bootstrap remote node. See section [Bootstrap
    nodes](#bootstrap-nodes) for a brief explanation of what a bootstrap
    node is.\
(5) **Bootstrap Port:** Enter the port of the bootstrap remote node.

### Remote Node

Use a remote node, do not download the blockchain. Check the ['About
remote nodes' section](#about-remote-nodes) of this guide.

![settings\_remote-node](media/black_settings-node-remote_node.png)

(1) **Address:** Enter the hostname or IP address of the remote node.\
(2) **Port:** Enter the port of the remote node.\
(3) **Daemon Username:** enter a username in case authentication to the
    remote node is required.\
(4) **Daemon Password:** enter a password in case authentication to the
    remote node is required.\
(5) **Trusted Daemon:** By default, data requests to remote nodes are
    obfuscated, and this process requires more resources. If your remote
    node is under your control (i.e. a dedicated server of your own) you
    can mark it trusted so that data requests will not be obfuscated
    anymore (just like a local node).

### Log

![settings-log](media/black_settings-log.png)

(1) **Log level:** Change the verbosity of the debug logs.\
(2) **Log categories:** Add specific categories to the debug logs.\
(3) **Daemon log:** Real time output of the log.\
(4) **Command line:** Interact with the daemon.

### Info

![settings-info](media/black_settings-info.png)

(1) **GUI Version:** Version of the GUI wallet installed.\
(2) **Embedded Monero Version:** Version of the embedded daemon in use.\
(3) **Wallet path:** Where the wallet is located on your computer.\
(4) **Wallet creation height:** Change the block height that a wallet
    rescan will go back to.\
(5) **Wallet log path:** Where the logs for this wallet will be saved.\
(6) **Wallet mode:** Display the wallet mode chosen in the
    [wizard](#choose-wallet-mode).\
(7) **Copy to clipboard:** Copy all information to clipboard.

Seed and keys
-------------

![seed-keys](media/black_seed-keys.png)

The `Seeds & Keys` tab displays your wallets mnemonic seed as well as
your secret view key, public view key, secret spend key, and public
spend key.

(1) **Mnemonic seed: DO NOT share your mnemonic seed with anyone. Store
    a copy securely.** The mnemonic seed is a 25 word phrase that
    contains all the information needed to view and spend funds. *Learn
    more about [mnemonic
    seeds](https://getmonero.org/resources/moneropedia/mnemonicseed.html).*\
(2) **Secret view key:** Secret view keys allows the holder to view your
    wallets incoming transactions, but not outgoing. It is sometimes
    useful for auditing purposes to give your secret view key to a third
    party.\
(3) **Public view key:** The public view key is used for stealth
    address creation. *Learn more about [view
    keys](https://getmonero.org/resources/moneropedia/viewkey.html).*\
(4) **Secret spend key: DO NOT share your secret spend key with anyone.
    The secret spend key is used to sign transactions and should be
    regarded with the same security as your mnemonic seed.**\
(5) **Public spend key:** The public spend key is used by the network to
    verify the signature of the key image you generate when you make
    a transaction. This is what prevents double-spends as the network
    enforces the rule that a key image can be spent only once. *Learn
    more about [spend
    keys](https://getmonero.org/resources/moneropedia/spendkey.html).*

![seed-keys](media/black_seed-keys_2.png)

(6) **Export Spendable Wallet: DO NOT share your spendable wallet QR
    code with anyone. This can be used like a mnemonic seed for
    recovering your wallet.** This creates a qrcode that contains all of
    your keys.\
(7) **Export View Only Wallet:** This creates a QR code that contains
    only the keys for viewing the transactions that this wallet sends or
    receives, but cannot create transactions.

Binaries Verification
=====================

Verify that the files you downloaded match the official ones. You can
use [this step-by-step
guide](https://getmonero.org/resources/user-guides/verification-windows-beginner.html)
with pictures (easy, for Windows user).

About remote nodes
==================

Remote nodes are useful if you are not able/don't want to download the
whole blockchain, but be advised that malicious remote nodes could
compromise some privacy. They may track your IP address, track your
"restore height" and associated block request data, and send you
inaccurate information to learn more about transactions you make. Please
make sure to use a node you trust (hopefully your own) and remain aware
of these limitations. Users who prioritize privacy should use a full
node instead. A number of open nodes are listed at
[moneroworld.com](https://moneroworld.com) and
[node-o-matic](https://node.pwned.systems)

Bootstrap nodes
---------------

A bootstrap node is a remote node to use whilst also syncing the
blockchain. This is different than the remote node setting, since it
will only use the specified remote node until the blockchain is fully
synced locally. It is a reasonable tradeoff for most people who care
about privacy but also want the convenience of an automatic fallback
option. Be aware that when using remote nodes (including with the
bootstrap setting), nodes may track your IP address, track your "restore
height" and associated block request data, and send you inaccurate
information to learn more about transactions you make. Please make sure
to use a node you trust (hopefully your own) and remain aware of these
limitations. Keep the Monero full node software operating on your
computer even when you are not using the wallet to reduce the amount of
leaked data. More information at
https://getmonero.org/resources/moneropedia/bootstrap-node.html

Common issues and solutions
===========================

-   **[I am missing (not seeing) a transaction to (in) the GUI
    (zero balance)](https://monero.stackexchange.com/questions/6640/i-am-missing-not-seeing-a-transaction-to-in-the-gui-zero-balance)**
-   **[I am using the GUI and my daemon doesn't start
    anymore](https://monero.stackexchange.com/questions/6825/i-am-using-the-gui-and-my-daemon-doesnt-start-anymore)**
-   **[Transaction stuck as “pending” in the
    GUI](https://monero.stackexchange.com/questions/6649/transaction-stuck-as-pending-in-the-gui)**
-   **[My GUI feels buggy / freezes all the
    time](https://monero.stackexchange.com/questions/6651/my-gui-feels-buggy-freezes-all-the-time)**
-   **[My name contains a special (non-ASCII) character (e.g. é, ø,
    â, Ö) and I can't create a wallet with the
    GUI](https://monero.stackexchange.com/questions/6823/my-name-contains-a-special-non-ascii-character-e-g-%c3%a9-%c3%b8-%c3%a2-%c3%96-and-i-cant-c)**
-   **[The GUI uses all my bandwidth and I can't browse anymore or use
    another application that requires internet
    connection](https://monero.stackexchange.com/questions/6653/the-gui-uses-all-my-bandwidth-and-i-cant-browse-anymore-or-use-another-applicat)**
-   **[How do I move the blockchain (data.mdb) to a different directory
    during (or after) the initial sync without losing the
    progress?](https://monero.stackexchange.com/questions/7225/how-do-i-move-the-blockchain-data-mdb-to-a-different-directory-during-or-afte)**
-   **[How do I change the language of the 25 word mnemonic seed in the
    GUI or
    CLI?](https://monero.stackexchange.com/questions/7373/how-do-i-change-the-language-of-the-25-word-mnemonic-seed-in-the-gui/)**
-   **[My blockchain is stuck, how do I “unstuck”
    it?](https://monero.stackexchange.com/questions/4462/my-blockchain-is-stuck-how-do-i-unstuck-it)**
-   **[I am using remote node, but the GUI still syncs
    blockchain?](https://monero.stackexchange.com/questions/6324/using-remote-node-still-syncs-blockchain)**
-   **I use a high resolution display and the GUI looks extremely
    small**\
    This problem will be fixed soon, but there is a workaround for
    Windows: right click on monero-wallet-gui.exe, select properties
    --&gt; compatibility. you'll find a 'high DPI' option, change value
    there from "Application" to "System" or vice versa
