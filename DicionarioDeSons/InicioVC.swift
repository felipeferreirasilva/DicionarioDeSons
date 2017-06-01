//
//  ViewController.swift
//  DicionarioDeSons
//
//  Created by Felipe Silva on 23/05/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import UIKit

class InicioVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var ptWordLbl: UILabel!
    @IBOutlet weak var enWordLbl: UILabel!
    @IBOutlet weak var playSoundBtn: UIButton!
    @IBOutlet weak var wordsPicker: UIPickerView!
    
    let p = Palavra()
    let audio = AudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordsPicker.dataSource = self
        wordsPicker.delegate = self
        alimentaPalavras()
        ptWordLbl.text = p.palavras[0].portugues
        enWordLbl.text = p.palavras[0].ingles
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return p.palavras.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return p.palavras[row].portugues
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ptWordLbl.text = p.palavras[row].portugues
        enWordLbl.text = p.palavras[row].ingles
    }

    @IBAction func infoBtnPressed(_ sender: Any) {
        let infoVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "info") as! InfoVC
        self.addChildViewController(infoVC)
        infoVC.view.frame = self.view.frame
        self.view.addSubview(infoVC.view)
        infoVC.didMove(toParentViewController: self)
    }
    
    @IBAction func playAudioBtnPressed(_ sender: Any) {
        audio.playAudioUS(audioName: ptWordLbl.text!)
        audio.playAudioSound(audioName: ptWordLbl.text!)
    }
    
    func alimentaPalavras(){
        let aluno = Palavra()
        aluno.criaPalavra(portugues: "Aluno", ingles: "Pupil")
        
        let apagador = Palavra()
        apagador.criaPalavra(portugues: "Apagador", ingles: "Frame Eraser")
        
        let borracha = Palavra()
        borracha.criaPalavra(portugues: "Borracha", ingles: "Eraser")
        
        let caneta = Palavra()
        caneta.criaPalavra(portugues: "Caneta", ingles: "Pen")
        
        let computador = Palavra()
        computador.criaPalavra(portugues: "Computador", ingles: "Computer")
        
        let estojo = Palavra()
        estojo.criaPalavra(portugues: "Estojo", ingles: "Pencil Case")
        
        let estudante = Palavra()
        estudante.criaPalavra(portugues: "Estudante", ingles: "Student")
        
        let folha = Palavra()
        folha.criaPalavra(portugues: "Folha", ingles: "Sheet")
        
        let giz = Palavra()
        giz.criaPalavra(portugues: "Giz", ingles: "Chalk")
        
        let professor = Palavra()
        professor.criaPalavra(portugues: "Professor", ingles: "Teacher")
        
        let quadro = Palavra()
        quadro.criaPalavra(portugues: "Quadro", ingles: "Blackboard")
        
        let sirene = Palavra()
        sirene.criaPalavra(portugues: "Sirene", ingles: "Siren")
        
        p.palavras = [aluno, apagador, borracha, caneta, estojo, estudante, folha, giz, professor, quadro, sirene]
    }
}

