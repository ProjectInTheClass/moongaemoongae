//프로젝트에 새로운 파일을 추가한 뒤, 메인 스토리 보드 TableController의 속성에 클래스 값을 추가한 뒤 코딩
import UIKit

class UserListViewController : UITableViewController {
    var vcCreatePRJ: CreateProjectController!
    var modelUserList = UserListModel.UserListModelSingleton
    var teamMembers: Array? = []
    
    override func numberOfSections(in tableView: UITableView) -> Int {//섹션 수 를 묻고 있음 , override 상속
        return 1 //Zero base 0~999
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // 총 1000번 호출 됨
        return self.modelUserList.arrayList.count
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func aaaaa(_ sender: UISwitch) {
        if(sender.isOn) {
            let check = sender // as? UISwitch
            let selctedCell = check.superview?.superview as! UITableViewCell
            let indexPath: IndexPath! = self.tableView.indexPath(for: selctedCell)
            let info = self.modelUserList.arrayList[indexPath.row]
            
            info.isCoworker = true
            
            teamMembers!.append(info.userName)
            teamMembers!.append(info.userMajor)
        }
        print(teamMembers ?? "팀원 없음")
    }
    
    @IBAction func AddMembers(sender : Any) {
        self.vcCreatePRJ.coworker.text = "\(teamMembers!)"

        self.navigationController?.popViewController(animated: true)
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Model 생성 후, 코드에 다시 추가
        let info = self.modelUserList.arrayList[indexPath.row]
        
        let cell : UserTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "Cell") as! UserTableViewCell
        

       //(선언할 때 느낌표는 옵셔널이지만 값이 항상 있다라고 가정하고 언래핑된 상태로 사용하겠따..)처음에 앱을 실행하면 캐시에 아무것도 없기 때문에 재사용할 셀이 없다... 그래서 옵셔널! 옵셔널은 그냥 쓸 수 없고, 언래핑해야지
        //       if cell == nil {
        //          cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
        //          print("cell created....!")
        //      }
        
   
//        let imgtitle = info.UserPhoto
        
        cell.userPhoto?.image = UIImage(named: info.userPhoto)
        cell.userName?.text = info.userName
        cell.userMajor?.text = info.userMajor
        cell.userSubmajor?.text = info.userSubmajor
        cell.userGrade?.text = info.userGrade
        cell.addMembers.isOn = info.isCoworker

        
//        //이미지 파일이 옵셔널이라면 바인딩을 통해 언래핑
//        if let image = info.image {
//        cellimageview?.image = UIImage(named : info.image)
//        }
//        else{
//        default image
//        }
//
//        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 79.0;
    
}

}
