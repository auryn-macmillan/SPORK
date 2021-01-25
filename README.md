# SPORK

SPORK is a fork of the [WETH contract](https://etherscan.io/address/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), used as a one-way vending machine where you can swap an EVM chain's native asset for the SPORK contract's ERC20 token. The native asset is forwarded on to a recipient address that is settable by Owner.

---

## quickstart

```bash
git clone https://github.com/austintgriffith/scaffold-eth.git your-next-dapp

cd your-next-dapp
```

```bash

yarn install

```

```bash

yarn start

```

> in a second terminal window:

```bash

yarn chain

```

> in a third terminal window:

```bash

yarn deploy

```


## 🛳 Ship it!

You can deploy your static site and your dapp can go live:

```bash

yarn run build

# ship it!

yarn run surge

OR

yarn run s3

OR

yarn run ipfs
```
