//
//  TermsController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 7/1/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class TermsController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.backgroundColor
        tableView.register(TermsCell.self, forCellReuseIdentifier: "term")
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        if indexPath.row == 0{
            return 1450
        } else if indexPath.row == 1 {
            return 275
        } else if indexPath.row == 2 {
            return 625
        } else {
            return 410
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "term", for: indexPath) as! TermsCell
        var title = ""
        var description = ""
        if indexPath.row == 0 {
            title = "Orders"
            description = """
            Our website does not allow us to make manual adjustments to finalized purchases.  All orders will be processed and shipped as originally placed.
            Customers are responsible for providing an accurate shipping address.  To prevent any shipping delays, please double check that the address listed in your order confirmation email is correct.
            HAUS OF BARZ, LLC. is not responsible for unfortunate events such as misplaced, lost or stolen packages, during the time of transit. Under all circumstances Carrier is responsible for any of all mail pieces that undergo Carrier delivery services. We will do our best to assist all customers regarding missing packages.
            All claims will be thoroughly reviewed case by case; claims may take up to 3 weeks to process. Once Carrier responds to your claim we will be able to take further proper actions to resolve this mishap. Until then, your kind patience is much appreciated as we work with Carrier.
            Filing a claim does not guarantee Carrier will partially or fully compensate/reimburse you for your lost/stolen package, but we will do our best to assist you through the process.
            In the unlikely circumstance we’d be unable to fulfill your order for whatever reason, an email will be sent to the address supplied by yourself when you placed the order explaining the issue that may have arose.
            HAUS OF BARZ, LLC. RESERVES THE RIGHT TO REJECT OR CANCEL YOUR ORDER FULFILLMENT OF ALL ORDERS ON THE HAUS OF BARZ, LLC. WEBSITE. WE EXPLICITLY RESERVE THE RIGHT NOT TO ACCEPT YOUR ORDER FOR ANY OF THE FOLLOWING REASONS:

            The product is not available / in stock
            Your billing information is not correct or not verifiable
            Your order has been suspected of fraudulent activity
            We could not deliver to the address provided by yourself
            Force Majeure
            In the event of misspelling, pricing or other errors or mistakes in the website information

            DATA CHECK

            We may run some checks on your details before we ship your order. These checks may include verifying your address and payment details linked to your order. Any orders found to be made under fraudulent pretenses will be followed up with an investigation.

            USER CONTENT

            When you transmit, upload, post, e-mail, share, distribute, reproduce or otherwise make available suggestions, ideas, inquiries, feedback, data, text, software, music, sound, photographs, graphics, images, videos, messages or other materials ("User Content") on the Site, you are entirely responsible for such User Content. You hereby grant to us a perpetual, worldwide, irrevocable, unrestricted, non-exclusive, royalty-free license to use, copy, license, sublicense, adapt, distribute, display, publicly perform, reproduce, transmit, modify, edit, and otherwise exploit such User Content throughout the world, in all media now known or hereafter developed, for any purpose whatsoever, including without limitation, developing, manufacturing, distributing and marketing products.
            You represent and warrant that you own or otherwise control the rights to your User Content. You agree not to engage in or assist or encourage others to engage in transmitting, uploading, posting, e-mailing, sharing, distributing, reproducing, or otherwise making available User Content that (a) is unlawful, harmful, threatening, abusive, harassing, tortious, defamatory, vulgar, obscene, pornographic, libelous, invasive of another's privacy, hateful, or racially, ethnically or otherwise objectionable; (b) you do not have a right to make available under any law or under contractual or fiduciary relationships; (c) is known by you to be false, fraudulent, inaccurate or misleading; (d) you were compensated for or granted any consideration by any third party; or (e) infringes any patent, trademark, trade secret, copyright or other proprietary rights of any party.
            We are in no way responsible for examining or evaluating User Content, nor do we assume any responsibility or liability for the User Content. We do not endorse or control the User Content transmitted or posted on the Site and therefore, we do not guarantee the accuracy, integrity or quality of User Content. You understand that by using the Site, you may be exposed to User Content that is offensive, indecent or objectionable to you. Under no circumstances will we be liable in any way for any User Content, including without limitation, for any errors or omissions in any User Content, or for any loss or damage of any kind incurred by you as a result of the use of any User Content transmitted, uploaded, posted, e-mailed or otherwise made available via the Site. You hereby waive all rights to any claims against us for any alleged or actual infringements of any proprietary rights, rights of privacy and publicity, moral rights, and rights of attribution in connection with User Content.
            You acknowledge that we have the right (but not the obligation) in our sole discretion to refuse to post or remove any User Content and we reserve the right to change, condense, or delete any User Content. Without limiting the generality of the foregoing or any other provision of these Terms and Conditions, we have the right to remove any User Content that violates these Terms and Conditions or is otherwise objectionable and we reserve the right to refuse service and/or terminate accounts without prior notice for any users who violate these Terms and Conditions or infringe the rights of others.

            DELETION OF USER CONTENT
            If you wish to delete your user content on our website or in connection with our mobile applications, please contact us by email at contact@hausofbarzlv.com and include the following information in your deletion request: first name, user name/screen name (if applicable), email address associated with our website and/or mobile applications, your reason for deleting the posting, and date(s) of posting(s) you wish to delete (if you have it). We may not be able to process your deletion request if you are unable to provide such information to us. Please allow up to 10 business days to process your deletion request.
            """
        } else if indexPath.row == 1 {
            title = "Prices"
            description = """
            The product prices displayed on the website are before tax and shipping and handling costs are added. Shipping rates are applied per order. The exact shipping rates depend on the country where your order is being delivered.
                Prices may vary across stores.
                Conversion rates may apply.

                PRICE CHANGES

                HAUS OF BARZ, LLC. reserves the right to change the price of a product at any time without any forewarning. Any orders placed prior to this change cannot be amended to the revised price.
            """
        } else if indexPath.row == 2 {
            title = "Shipping"
            description = """
            Orders are shipped to the provided shipping address listed under customer’s account.
            HAUS OF BARZ, LLC. is not responsible for packages delivered to mistyped or invalid address.
            All returning packages due to insufficient address will be sent a verification email. Customers will have 72 hours to respond, failure to reply within 72 hours will automatically result in order cancellation.

            Customer’s funds will be transferred to store credit.
            Customer's are responsible for any additional postage fees for orders that need to be re-shipped due to invalid addresses
            Additional shipping fees may be applied if incorrect shipping information was entered at checkout. You will have 24 hours to make any minor size or address changes to this order free of charge. Make sure you call or write into customer service within this time frame.

            DOMESTIC ORDERS/SHIPPING

            Orders are generally received within 7 business days after date of fulfillment.
            Expected delivery dates may vary during holiday season, depending on volume of mail experienced through postal service.

             
            INTERNATIONAL ORDERS/SHIPPING

            Duties and taxes are determined by the customs agency within the designated country. Although charges are not always incurred, assessment of duties and taxes will be based on the value of the order and the Tax-free threshold, if it exists, for goods imported into the designated country.
            Payment of any duties and taxes is the responsibility of the recipient, and these fees are collected at the time of delivery. More information can be obtained by contacting your local customs office.
            International shipping expected delivery dates varies depending on the location.
            Orders are generally received within 5-10 business day
            Shipping dates may vary during holiday season, depending on volume of mail experience through postal service.
            """
        } else {
            title = "Promotions/Sales"
            description = """
            DISCOUNT CODES

            Only one discount code can be used per order.
            HAUS OF BARZ, LLC. reserves the right to refuse or cancel the use of a discount code without any further discussion.
            Usage of discount codes are subject to stock availability.

            PROMOTIONAL OFFERS

            Promotions may vary across stores
            All discount codes must be entered at the time of checkout.
            For our customer’s safety, our software does not allow us to manually apply discount codes or adjust any prices to orders once they are finalized and payment has been accepted.
            Only one discount code can be applied per purchase.

            ​
            SPECIAL SALES EVENTS (Expos, Warehouse sale, Meet & Greets, etc.)

            All sale items are final include Black Friday and Cyber Monday purchases.
            We do not accept any returns or exchanges on sale items.
             Sale prices and discount codes are only valid during the time of the sale.  Sale prices will not be applied to any orders placed before or after the time of the sale.
            """
        }
        
        cell.setupCell(title: title, description: description)
        return cell
    }
    


}

