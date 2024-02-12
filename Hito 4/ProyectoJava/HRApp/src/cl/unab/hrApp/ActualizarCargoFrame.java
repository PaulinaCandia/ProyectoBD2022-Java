package cl.unab.hrApp;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextField;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JButton;
import javax.swing.JComboBox;
import cl.unab.hrModel.entities.Job;
import cl.unab.hrModel.services.JobsService;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class ActualizarCargoFrame extends JFrame {

	private JPanel contentPane;
	private JTextField jobIdTxt;
	private JTextField jobTitleTxt;
	private JTextField maxSalaryTxt;
	private JTextField minSalaryTxt;
	private JComboBox<Job> cargosCbx;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ActualizarCargoFrame frame = new ActualizarCargoFrame();
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
	public ActualizarCargoFrame() {
		setTitle("Actualizar Cargos");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 567, 431);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		jobIdTxt = new JTextField();
		jobIdTxt.setEnabled(false);
		jobIdTxt.setColumns(10);
		jobIdTxt.setBounds(217, 148, 117, 31);
		contentPane.add(jobIdTxt);
		
		JLabel lblNewLabel = new JLabel("Identificador");
		lblNewLabel.setBounds(113, 155, 89, 16);
		contentPane.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Nombre");
		lblNewLabel_1.setBounds(134, 202, 61, 16);
		contentPane.add(lblNewLabel_1);
		
		jobTitleTxt = new JTextField();
		jobTitleTxt.setColumns(10);
		jobTitleTxt.setBounds(215, 195, 189, 31);
		contentPane.add(jobTitleTxt);
		
		maxSalaryTxt = new JTextField();
		maxSalaryTxt.setColumns(10);
		maxSalaryTxt.setBounds(212, 285, 189, 31);
		contentPane.add(maxSalaryTxt);
		
		JLabel lblNewLabel_2 = new JLabel("Sueldo M\u00E1ximo");
		lblNewLabel_2.setBounds(82, 292, 117, 16);
		contentPane.add(lblNewLabel_2);
		
		JLabel lblNewLabel_3 = new JLabel("Sueldo M\u00EDnimo");
		lblNewLabel_3.setBounds(82, 249, 117, 16);
		contentPane.add(lblNewLabel_3);
		
		minSalaryTxt = new JTextField();
		minSalaryTxt.setColumns(10);
		minSalaryTxt.setBounds(212, 242, 189, 31);
		contentPane.add(minSalaryTxt);
		
		JButton actualizarBtn = new JButton("Actualizar");
		actualizarBtn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//TODO: Validar
				Job job = new Job();
				job.setJobId(jobIdTxt.getText().trim());
				job.setJobTitle(jobTitleTxt.getText().trim());
				job.setMaxSalary(Integer.parseInt(maxSalaryTxt.getText().trim()));
				job.setMinSalary(Integer.parseInt(minSalaryTxt.getText().trim()));
				JobsService jobService = new JobsService();
				if(jobService.update(job)) {
					Job seleccionado = (Job)cargosCbx.getSelectedItem();
					
					cargarCombo();
					//Esta es una solucion más fina
					 /*for(int i=0; i < cargosCbx.getItemCount(); ++i) {
						
						Job actual = cargosCbx.getItemAt(i);
						
						if(seleccionado.getJobId().equals(actual.getJobId())) {
							cargosCbx.setSelectedIndex(i);
							break;
						}
					} */
					
					
					JOptionPane.showMessageDialog(null, "Cargo actualizado");
				} else {
					JOptionPane.showMessageDialog(null, "Error al actualizar el cargo");
				}
			}
		});
		actualizarBtn.setEnabled(false);
		actualizarBtn.setBounds(413, 330, 117, 29);
		contentPane.add(actualizarBtn);
		
		cargosCbx = new JComboBox<Job>();
		cargosCbx.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				
				Job job = (Job)cargosCbx.getSelectedItem();
				if(job != null) {
					//Cargar el formulario
					jobIdTxt.setText(job.getJobId());
					jobTitleTxt.setText(job.getJobTitle());
					//Forma simple
					maxSalaryTxt.setText(job.getMaxSalary()+"");
					//Forma descente
					minSalaryTxt.setText(String.valueOf(job.getMinSalary()));
					actualizarBtn.setEnabled(true);
					
				}else {
					actualizarBtn.setEnabled(false);
				}
			}
		});
		cargosCbx.setBounds(215, 35, 189, 27);
		contentPane.add(cargosCbx);
		
		JLabel lblNewLabel_4 = new JLabel("Seleccione un cargo:");
		lblNewLabel_4.setBounds(34, 35, 168, 20);
		contentPane.add(lblNewLabel_4);
		cargarCombo();
	}

	public void cargarCombo() {
		JobsService jobService = new JobsService();
		List<Job> jobs = jobService.getAll();
		cargosCbx.removeAllItems();
		for(Job j: jobs) {
			cargosCbx.addItem(j);
		}
	}
}
