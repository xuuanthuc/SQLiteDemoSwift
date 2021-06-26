

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var contactPhoneNumberLabel: UILabel!
    @IBOutlet weak var contactPhotoImageView: UIImageView!
    
    // Set up contact values
    //giá trị của Contact Model
    func setCellWithValuesOf(_ contact: Contact) {
        contactNameLabel.text = contact.firstName + " " + contact.lastName
        contactPhoneNumberLabel.text = contact.phoneNumber
        
        let image = UIImage(data: contact.photo)
        contactPhotoImageView.image = image
        contactPhotoImageView.makeRounded()
    }
}
