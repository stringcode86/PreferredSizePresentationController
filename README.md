# PreferredSizePresentationController
`PreferredSizePresentationController` is implementation of `UIPresentationController`. It sizes `presentedViewController` by its `preferredContentSize` and centers it in `presentingViewController`. If `preferredContentSize` is not available or zero, size is computed using `systemLayoutSizeFitting`. Stuble motion effect are added to `presentedViewController`.

Licence [WTFPL](http://www.wtfpl.net)
