// 
// 
// import UIKit
// import StoreKit
// 
// class ProductCell: UITableViewCell {
//    static let priceFormatter: NumberFormatter = {
//        let formatter = NumberFormatter()
//        
//        formatter.formatterBehavior = .behavior10_4
//        formatter.numberStyle = .currency
//        
//        return formatter
//    }()
//    
//    var buyButtonHandler: ((_ product: SKProduct) -> ())?
//    
//    var product: SKProduct? {
//        didSet {
//            guard let product = product else { return }
//            
//            textLabel?.text = product.localizedTitle
//            
//            if RageProducts.store.isProductPurchased(product.productIdentifier) {
//                accessoryType = .checkmark
//                accessoryView = nil
//                detailTextLabel?.text = ""
//            } else if IAPHelper.canMakePayments() {
//                ProductCell.priceFormatter.locale = product.priceLocale
//                detailTextLabel?.text = ProductCell.priceFormatter.string(from: product.price)
//                
//                accessoryType = .none
//                accessoryView = self.newBuyButton()
//            } else {
//                detailTextLabel?.text = "Not available"
//            }
//        }
//    }
//    
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        
//        textLabel?.text = ""
//        detailTextLabel?.text = ""
//        accessoryView = nil
//    }
//    
//    func newBuyButton() -> UIButton {
//        let button = UIButton(type: .system)
//        button.setTitleColor(tintColor, for: UIControl.State())
//        button.setTitle(NSLocalizedString("Buy", comment: ""), for: UIControl.State())
//        button.addTarget(self, action: #selector(ProductCell.buyButtonTapped(_:)), for: .touchUpInside)
//        button.sizeToFit()
//        return button
//    }
//    
//    @objc func buyButtonTapped(_ sender: AnyObject) {
//        buyButtonHandler?(product!)
//    }
// }
