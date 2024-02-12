package gui.frames;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;


import clases.Residencia;
import gui.utiles.CreditosService;
import clases.Creditos;

import javax.swing.JTable;
import javax.swing.JScrollPane;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JLabel;
import java.awt.Font;

public class Principal extends JFrame {

	private JPanel contentPane;
	private JTable tableCreditos;
	private JButton ingresarBtn;

	private JLabel lblNewLabel;
	private JLabel lblCargos;
	private JLabel lblRegiones;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Principal frame = new Principal();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	private void cargarTabla() {
		CreditosService service = new CreditosService();
		List<Creditos> listEmp = service.getAll();
		DefaultTableModel model = new DefaultTableModel();
		model.addColumn("Identificador");
		model.addColumn("Nombre");
		model.addColumn("Descripcion");
		model.addColumn("Tasa Interes");
		model.addColumn("Cuotas Maximas");
		for(Creditos c: listEmp) {
			Object[] fila = new Object[5];
			fila[0] = c.getID_CREDITO();
			fila[1] = c.getNOMBRE();
			fila[2] = c.getDESCRIPCION();
			fila[3] = c.getTASA_INTERES();
			fila[4] = c.getCUOTAS_MAX();
			model.addRow(fila);
		}
		tableCreditos.setModel(model);
}

	/**
	 * Create the frame.
	 */
	public Principal() {
		setTitle("CooperaApp");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 748, 496);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(29, 212, 682, 214);
		contentPane.add(scrollPane);
		
		tableCreditos = new JTable();
		scrollPane.setViewportView(tableCreditos);
		
		ingresarBtn = new JButton("Ingresar Residencia");
		ingresarBtn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				IngresarResidencia ingre = new IngresarResidencia();
				ingre.setVisible(true);
			}
		});
		ingresarBtn.setBounds(15, 40, 171, 29);
		contentPane.add(ingresarBtn);
		cargarTabla();
		

		
	}
	

}

