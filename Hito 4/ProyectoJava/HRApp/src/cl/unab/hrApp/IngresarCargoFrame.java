package cl.unab.hrApp;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import cl.unab.hrModel.entities.Job;
import cl.unab.hrModel.services.JobsService;

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

public class IngresarCargoFrame extends JFrame {

	private JPanel contentPane;
	private JTextField jobIdTxt;
	private JTextField jobTitleTxt;
	private JTextField salaryMinTxt;
	private JLabel lblNewLabel_4;
	private JTextField salaryMaxTxt;
	private JLabel lblNewLabel_2;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					IngresarCargoFrame frame = new IngresarCargoFrame();
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
	public IngresarCargoFrame() {
		setTitle("Ingresar Cargos");
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
		
		JLabel lblNewLabel_1 = new JLabel("Nombre");
		lblNewLabel_1.setBounds(87, 107, 61, 16);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_3 = new JLabel("Sueldo M\u00EDnimo");
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
				
				JobsService jobService = new JobsService();
				//TODO: VALIDAR?
				String jobId = jobIdTxt.getText().trim();
				String jobTitle = jobTitleTxt.getText().trim();
				int maxSalary = Integer.parseInt(salaryMaxTxt.getText().trim());
				int minSalary = Integer.parseInt(salaryMinTxt.getText().trim());
				Job posibleJob = jobService.find(jobId);
				
				if(posibleJob == null) {
					
					Job job = new Job();
					
					job.setJobId(jobId);
					job.setJobTitle(jobTitle);
					job.setMaxSalary(maxSalary);
					job.setMinSalary(minSalary);
					
					if(jobService.save(job)) {
						JOptionPane.showMessageDialog(null, "Cargo registrado");
						dispose();
					} else {
						JOptionPane.showMessageDialog(null, "Error al ingresar cargo");
					}
					
				}else {
					
					JOptionPane.showMessageDialog(null, "El identificador de este cargo ya existe");
				}
				
				
				
				
			}
		});
		btnNewButton.setBounds(375, 225, 117, 29);
		contentPane.add(btnNewButton);
		
		lblNewLabel_4 = new JLabel("(Largo M\u00E1ximo 10)");
		lblNewLabel_4.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblNewLabel_4.setBounds(320, 58, 108, 20);
		contentPane.add(lblNewLabel_4);
		
		salaryMaxTxt = new JTextField();
		salaryMaxTxt.setColumns(10);
		salaryMaxTxt.setBounds(171, 186, 167, 31);
		contentPane.add(salaryMaxTxt);
		
		lblNewLabel_2 = new JLabel("Sueldo M\u00E1ximo");
		lblNewLabel_2.setBounds(46, 202, 117, 16);
		contentPane.add(lblNewLabel_2);
	}
}
