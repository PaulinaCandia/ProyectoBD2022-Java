package cl.unab.hrApp;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;

import cl.unab.hrModel.entities.Job;
import cl.unab.hrModel.services.JobsService;

import javax.swing.JTable;
import javax.swing.JScrollPane;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.List;

public class VerCargosFrame extends JFrame {

	private JPanel contentPane;
	private JTable jobsTable;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					VerCargosFrame frame = new VerCargosFrame();
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
	public VerCargosFrame() {
		setTitle("Mostrar Cargos");
		
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 594, 322);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(92, 47, 381, 190);
		contentPane.add(scrollPane);
		
		jobsTable = new JTable();
		scrollPane.setViewportView(jobsTable);
		
		DefaultTableModel modelo = new DefaultTableModel();
		modelo.addColumn("JOB ID");
		modelo.addColumn("JOB TITLE");
		
		JobsService jobService = new JobsService();
		List<Job> jobs = jobService.getAll();
		jobs.forEach(j->{
			Object[] fila = new Object[2];
			fila[0] = j.getJobId();
			fila[1] = j.getJobTitle();
			modelo.addRow(fila);
		});
		
		jobsTable.setModel(modelo);
		
		
		
	}
}
