
import UIKit

class FlashLightViewController: UIViewController {
    var orangeView: OrangeView { return self.view as! OrangeView }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemYellow
        
        
        
    }
    
    override func loadView() {
        self.view = OrangeView(frame: UIScreen.main.bounds)
    }
    
    

    
    
    
    class OrangeView: UIView {
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.layer.backgroundColor = CGColor.init(red: 1, green: 0, blue: 0, alpha: 1)
            setupView()
            setupCostraints()
            setupFlashButton()
            setupScreenButton()

        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setupView() {
            self.addSubview(contentView)
            self.addSubview(likeButton)
            self.addSubview(flashButton)
            self.addSubview(screenButton)
        }
        
        
        
        func setupCostraints() {
            self.translatesAutoresizingMaskIntoConstraints = false
            setConstraintsContentView()
            setConstraintsLikeButton()
        }
        
        
        
        
        
        fileprivate func setConstraintsContentView() {
            contentView.translatesAutoresizingMaskIntoConstraints = false
            contentView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10) .isActive = true
            contentView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10) .isActive = true
            contentView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
            contentView.bottomAnchor.constraint(equalTo: centerYAnchor, constant: -30).isActive = true
        }
        
        fileprivate func setConstraintsLikeButton() {
            likeButton.translatesAutoresizingMaskIntoConstraints = false
            likeButton.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 0).isActive = true
            likeButton.topAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
        }
        
        let contentView: UIView = {
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            view.layer.borderWidth = 1.0
            view.layer.borderColor = UIColor.brown.cgColor
            view.backgroundColor = .white
            return view
        }()
        
        let likeButton: UIButton = {
            let button = UIButton(type: .system)
            button.setTitle("Like", for: .normal)
            return button
        }()
        
       
        // MARK: - Design Buttons Flash
        
        class FlashButtons: UIButton {
            override init(frame: CGRect) {
                super.init(frame: frame)
                self.frame.size = CGSize(width: 80, height: 80)
                self.layer.cornerRadius = 50
                self.backgroundColor = .systemPurple
                self.translatesAutoresizingMaskIntoConstraints = false
                self.imageEdgeInsets = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
            }
            
            required init?(coder: NSCoder) {
                fatalError("init(coder:) has not been implemented")
            }
        }
        
        
        // MARK: - Buttons Flash
        
        //@IBOutlet var flashButton: FlashButtons!
        
        
        
        private var flashButton: FlashButtons = {
            let button = FlashButtons()
            button.setImage(UIImage(named: "flashlight_on"), for: .normal)
            button.addTarget(self, action: #selector(didTappedFlashButton), for: .touchUpInside)
            return button
        }()
        
        @objc func didTappedFlashButton(sender: Any) {
            flashButton.backgroundColor = .systemPink
            
            // ВОТ ТУТ ХОЧУ ВПИСАТЬ КОД ЧТОБЫ МЕНЯЛО ЦВЕТ ЭКРАНА НА КОТОРОМ НАХОДИТСЯ ЭТА КНОПКА (ТЕКУЩИЙ ЖЕЛТЫЙ)
        }
        
        let screenButton: FlashButtons = {
            let button = FlashButtons()
            button.setImage(UIImage(named: "screenlight_on"), for: .normal)
            return button
        }()
        

       func setupFlashButton() {
            flashButton.topAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 60).isActive = true
            flashButton.leftAnchor.constraint(equalTo: self.centerXAnchor, constant: 40).isActive = true
        }

        func setupScreenButton() {
            screenButton.topAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 60).isActive = true
            screenButton.rightAnchor.constraint(equalTo: self.centerXAnchor, constant: -40).isActive = true
        }
         
        
       
    }
    
}

