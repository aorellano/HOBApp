//
//  PolicyController.swift
//  H.O.B
//
//  Created by Alexis Orellano on 7/3/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class PolicyController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.backgroundColor
        tableView.register(TermsCell.self, forCellReuseIdentifier: "term")
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
          if indexPath.row == 0{
              return 240
          } else if indexPath.row == 1 {
              return 2950
          } else if indexPath.row == 2 {
              return 350
          } else {
              return 115
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
              title = "Privacy Policy"
              description = """
              
              To help us provide you with more of what you love, we grab information about you. This way HAUS OF BARZ, LLC. can treat you to the best experience.

              This notice is to inform you about how we collect and protect any personal information you provide to us (whether you go online to our websites, contact us via social media, visit our stores, enter competitions, attend our events, engage in research activities or whether you telephone, email, write, or text us) and how you can control what personal information we collect from you and what we do with it. It sets out how we intend to use your information, who we will share it with and what rights you have about use of your information.
              """
          } else if indexPath.row == 1 {
              title = "Legal Basis For Using Data"
              description = """
              We are required to set out the legal basis for our processing of your personal data.
              We collect and use customers’ personal data:
              as necessary to perform our contract with you:
              for the purposes of complying with our duties and exercising our rights under a contract for the sale of goods or services to a customer;
              or
              as necessary for the pursuit of our legitimate interests, including:
              selling and supplying goods and services to our customers;
              promoting, marketing and advertising our products and services;
              sending promotional communications which are relevant and tailored to individual customers (including administering loyalty schemes);
              to identify and contact competition winners;
              understanding our customers’ behaviour, activities, preferences, and needs;
              improving existing products and services and developing new products and services;
              protecting customers, employees and other individuals and maintaining their safety, health and welfare;
              good governance, accounting and managing and auditing our operations and complying with our legal and regulatory obligations;
              preventing, investigating and detecting crime, fraud or anti-social behaviour and prosecuting offenders, including working with law enforcement agencies;
              handling customer contacts, queries, complaints or disputes;
              protecting our company, its employees and customers, by taking appropriate legal action against third parties who have committed criminal acts or are in breach of legal obligations to us;
              handling any legal claims or regulatory enforcement actions taken against us; and
              fulfilling our duties to our customers, colleagues, shareholders and other stakeholders;
              or
              as necessary for complying with our legal obligations including:
              where you exercise your rights under data protection laws
              for compliance with legal and regulatory requirements;
              to establish or defend legal rights;
              or
              based on your consent for example in relation to sending direct marketing communications via email or text message.
              You have the right to withdraw consent at any time. Where consent is the only legal basis for processing, we will cease to process data after consent is withdrawn.
              PERSONAL INFORMATION COLLECTED
              We may collect the following information about you:
              your name, age/date of birth, gender and other relevant demographic information;
              your contact details: postal address including billing and delivery addresses, telephone numbers (including mobile numbers) and email address;
              your social media handles;
              purchases and orders made by you;
              your online browsing activities on any of our websites including which items you store in your shopping cart;
              information about the device you use to browse our websites including the IP address and device type;
              your communication and marketing preferences;
              your interests, preferences, feedback, competition and survey responses;
              your location;
              your correspondence and communications with us; and
              other publicly available personal data, including any which you have shared via a public platform (such as Instagram, YouTube, Twitter or public Facebook page).
              This list is not exhaustive and in specific instances, we may need to collect additional data for the purposes set out in this Notice. Some personal data is collected directly, for example when you set up an online account on our website or send an email to our Support team. Other personal data is collected indirectly, for example when you browse our websites or conduct online shopping activity. We may also collect personal data from third parties who have your consent to pass your details to us, or from publicly available sources. We may anonymise and aggregate personal data for insight and research but this will not identify anyone.
              Our websites are not intended for children and we do not knowingly collect data relating to children.
              HOW WE USE PERSONAL INFORMATION
              General
              HAUS OF BARZ, LLC. (and trusted partners acting on our behalf) use your personal data:
              to provide goods and services to you;
              to make a tailored website available to you;
              to manage any account(s) you hold with us;
              to verify your identity;
              for crime and fraud prevention, detection and related purposes;
              with your agreement, to contact you about promotional offers, events, products and services which we think may interest you;
              to show you promotional communications through online media as you browse the web;
              for analysis, insight and research purposes - to better understand your needs and ensure we are giving you what you want;
              to identify and contact competition winners;
              to enable us to manage customer service interactions with you; and
              where we have a legal right or duty to use or disclose your information (for example in relation to an investigation by a public authority or in a legal dispute).
              Data Retention
              When you place an order through the Site, we will maintain your Order Information for our records unless and until you ask us to delete this information.
              Marketing
              Promotional communications
              To ensure you are kept up to date with the HAUS OF BARZ, LLC., we use personal data for marketing purposes and may send you postal mail, texts and/or emails to update you on the latest offers and events. We may also show you online media communications through external social media platforms such as Facebook and Instagram and external digital advertisers such as Google.
              You have the right to opt out of receiving promotional communications at any time, by:
              informing us that you wish to change your marketing preferences by contacting our customer support team at contact@hausofbarzlv.com;
              making use of the simple “unsubscribe” link in emails or the “STOP” number for texts;
              This may not stop service messages such as order updates.
              Personalization and Automated Decision Making
              If you visit any of our websites, you may receive personalized banner advertisements whilst browsing websites of other companies. Any banner advertisements you see will relate to your browsing activity on our website from your computer or other devices.
              These advertisements are provided by us via external market leading specialist providers using techniques such as pixels, web beacons , ad tags, mobile identifiers and ‘cookies’ placed on your computer or other devices. Like most websites, our websites use cookies to collect information. Cookies are small data files which are placed on your computer or other devices (such as smartphones or tablets) as you browse our websites. They are used to ‘remember’ when your computer or device accesses our websites. They allow us to remember whether you are logged in to the site and what items you had in your shopping basket. Cookies are essential for the effective operation of our websites and to help you shop with us online. They are also used to tailor the products and services offered and advertised to you, both on our websites and elsewhere.
              We may collect data directly from you, as well as analyzing your browsing and purchasing activity online and your responses to marketing communications. The results of this analysis, together with other demographic data, allow us to ensure that we contact you with information on products, services, events and offers that are tailored and relevant to you. To do so, we use software and other technology for automated decision making. We may do this to decide what marketing communications are suitable for you and this activity is based on our legitimate interests to develop and improve our products and services.
              Also to provide more personalized services and experiences, we may review data held by external social media platform providers about you, for example, details on your Twitter or Facebook profiles that you have chosen to make publicly accessible such as your name, date of birth. Some of our services enable you to sign-in via external social media platform providers such as Facebook. If you choose to sign-in via a third party app, you will be presented with a dialog box which will ask your permission to allow us to access your personal information (e.g. your full name, date of birth, email address and any other information you have made accessible).
              We aim to update you about products and services which are of interest and relevance to you as an individual. To help us do this, we process data by profiling and segmenting, identifying what our customers like and ensuring messages we send them are relevant based on their demographics, interests, purchase behaviour, online web browsing activity and engagement with previous communications. We may also use your data to exclude you from communications which we feel are irrelevant to you. For example, we may exclude someone from resends of marketing emails when we know that person has already opened the original email sent.
              Another example of how we may tailor our communications with you is that we may group individuals with similar interests using this data so we can send them product news or promotional offers that are relevant to that shared interest.
              You have the right to opt out of any automated processing, including profiling, at any time by informing us that you wish to opt out of automated processing by contacting our support team at contact@hausofbarzlv.com.
              Third Parties
              Our service providers and suppliers
              In order to make certain services available to you and to help us better understand your preferences, we have partnered with certain trusted third parties including logistics and marketing service providers. We may need to share your personal information with some of our service partners. We only allow our service providers to handle your personal information when they have confirmed that they apply appropriate data protection and security controls. We also impose contractual obligations on service providers relating to data protection and security, which mean they can only use your information to provide services to us and to you, and for no other purposes. We may provide outside companies with aggregated and anonymised information and analytics about our customers but that would never identify you and we will never sell or rent your personal information to other organizations for any purposes.
              To help you understand which partners we share data with, here are the types of companies with whom we share data in order to provide and promote our goods and services:
              Companies that help us provide our goods to you including providers of ecommerce platforms and payment, logistics, delivery, courier and returns management services.
              ​We have help from outside organizations in order to ensure we can provide our products and services to you, such as shipping & handling companies that need to know where to deliver a customer's order.
              ​Companies that help us provide a better experience tailored to you including providers of intelligence tools and social media platforms, providers of website hosting, marketing and advertising services and organizers of discount and loyalty programs.
              ​Using information about your previous purchases and what you store in your shopping cart to show you, through channels such as social media or emails, product recommendations and let you know when new products release.
              The optional use of sign in for our website through external site operators such as Facebook or Google Mail.
              If you log into a Third Party Application using your HAUS OF BARZ account credentials, then that Third Party Application may have access to certain Service Usage Data such as your purchases.
              We cannot control or be held responsible for third parties’ privacy practices and content. If you click on a third-party advertisement or link, please understand that you are leaving the HAUS OF BARZ Service and any personal data you provide will not be covered by this Policy. Please read their privacy policies to find out how they collect and process your personal data.
              Understanding the device that you use to browse our websites to improve your shopping experience.
              ​Fraud Prevention agencies.
              ​To help tackle fraud we pass data through fraud prevention tools operated by external companies. We do this by validating your details when you make a purchase on our website.
              other companies within our group;
              to purchasers, investors, funders and advisers if we sell our business or assets or restructure whether by merger, re-organization or otherwise;
              our legal and other professional advisers, including our auditors;
              credit reference agencies where necessary for card payments;
              governmental bodies, regulators, law enforcement agencies, courts/tribunals and insurers where we are required to do so:
              to comply with our legal obligations;
              to exercise our legal rights (for example in court cases);
              for the prevention, detection, investigation of crime or prosecution of offenders; and
              for the protection of our employees and customers.
              """
          } else if indexPath.row == 2 {
              title = "How We Protect Your Data"
              description = """
              You should always be cautious when sharing your personal data. No one from our company will ever ask you to confirm any bank account or credit card details via email. If you receive an email claiming to be from HAUS OF BARZ, LLC. asking you to do so, please ignore it and do not respond.
              If you are using a computing device in a public location, we recommend that you always log out and close the website browser when you complete an online session.
              HAUS OF BARZ, LLC. is committed to keeping your personal data safe and secure.
              Our security measures include:
              encryption of data;
              regular cyber security assessments of all service providers who may handle your personal data;
              regular planning to ensure we are ready to respond to cyber security attacks and data security incidents;
              daily penetration testing of systems;
              security controls which protect our IT systems infrastructure and our premises from external attack and unauthorized access;
              internal policies setting out our data security rules for our personnel; and
              regular training for our employees.
              """
          } else {
              title = "Changes"
              description = """
              HAUS OF BARZ, LLC. may update this privacy policy from time to time in order to reflect, for example, changes to our practices or for other operational, legal or regulatory reasons.
              """
          }
          
          cell.setupCell(title: title, description: description)
          return cell
      }
    
}
