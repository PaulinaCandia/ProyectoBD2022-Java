package cl.unab.hrApp;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import cl.unab.hrModel.entities.Job;
import cl.unab.hrModel.services.JobsService;

import javax.swing.JComboBox;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JLabel;

public class EliminarCargoFrame extends JFrame {

	private JPanel contentPane;
	private JComboBox<Job> cargosCbx;
	private JLabel lblNewLabel;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					EliminarCargoFrame frame = new EliminarCargoFrame();
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
	public EliminarCargoFrame() {
		setTitle("Eliminar Cargos");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 450, 280);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		cargosCbx = new JComboBox<>();
		cargosCbx.setBounds(127, 54, 189, 27);
		contentPane.add(cargosCbx);
		
		JButton eliminarBtn = new JButton("Eliminar");
		eliminarBtn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//1. Obtener el job seleccionado
				Job job = (Job)cargosCbx.getSelectedItem();
				JobsService jobService = new JobsService();
				//TODO: Preguntar si esta seguro?
				if(jobService.delete(job)) {
					cargarCombo();
					JOptionPane.showMessageDialog(null, "Cargo Eliminado");
				} else {
					JOptionPane.showMessageDialog(null, " Error al eliminar el cargo");
				}
				
			}
		});
		eliminarBtn.setBounds(296, 182, 117, 29);
		contentPane.add(eliminarBtn);
		
		lblNewLabel = new JLabel("Seleccione un cargo:");
		lblNewLabel.setBounds(15, 16, 168, 20);
		contentPane.add(lblNewLabel);
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
