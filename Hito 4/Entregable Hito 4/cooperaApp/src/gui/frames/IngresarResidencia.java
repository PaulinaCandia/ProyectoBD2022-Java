package gui.frames;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import clases.Residencia;
import gui.utiles.ResidenciaService;
import gui.utiles.Conexion;

import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;
import java.awt.event.ActionEvent;
import java.awt.Color;
import java.awt.Font;

public class IngresarResidencia extends JFrame {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JTextField jobIdTxt;
	private JTextField jobTitleTxt;
	private JTextField salaryMinTxt;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					IngresarResidencia frame = new IngresarResidencia();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public IngresarResidencia() {
		setTitle("Ingresar Residencia: ");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 529, 326);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("*Identificador");
		lblNewLabel.setForeground(Color.RED);
		lblNewLabel.setBounds(46, 60, 117, 16);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Ciudad:");
		lblNewLabel_1.setBounds(87, 107, 61, 16);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_3 = new JLabel("Region:");
		lblNewLabel_3.setBounds(46, 154, 117, 16);
		contentPane.add(lblNewLabel_3);
		
		jobIdTxt = new JTextField();
		jobIdTxt.setBounds(171, 53, 117, 31);
		contentPane.add(jobIdTxt);
		jobIdTxt.setColumns(10);
		
		jobTitleTxt = new JTextField();
		jobTitleTxt.setColumns(10);
		jobTitleTxt.setBounds(171, 100, 201, 31);
		contentPane.add(jobTitleTxt);
		
		salaryMinTxt = new JTextField();
		salaryMinTxt.setColumns(10);
		salaryMinTxt.setBounds(171, 147, 167, 31);
		contentPane.add(salaryMinTxt);
		
		JButton btnNewButton = new JButton("Ingresar");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				ResidenciaService ResidenciaService = new ResidenciaService();
				//TODO: VALIDAR?
				String jobId = jobIdTxt.getText().trim();
				String jobTitle = jobTitleTxt.getText().trim();
				String minSalary = salaryMinTxt.getText().trim();
				Residencia posresidencia = ResidenciaService.find(jobId);
				
				if(posresidencia == null) {
					
					Residencia residencia = new Residencia();
					
					residencia.setID_RESIDENCIA(Integer.parseInt(jobId));
					residencia.setCIUDAD(jobTitle);
					residencia.setREGION(minSalary);
					
					if(ResidenciaService.save(residencia)) {
						JOptionPane.showMessageDialog(null, "Residencia registrada");
						dispose();
					} else {
						JOptionPane.showMessageDialog(null, "Error al ingresar residencia");
					}
					
				}else {
					
					JOptionPane.showMessageDialog(null, "El identificador de esta residencia ya existe");
				}
				
				
				
				
			}
		});
		btnNewButton.setBounds(375, 225, 117, 29);
		contentPane.add(btnNewButton);
		

	}
}



