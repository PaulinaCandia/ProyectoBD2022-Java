package cl.unab.hrApp;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.util.List;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;

import cl.unab.hrModel.entities.Employee;
import cl.unab.hrModel.services.EmployeesService;

import javax.swing.JTable;
import javax.swing.JScrollPane;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JLabel;
import java.awt.Font;

public class Start extends JFrame {

	private JPanel contentPane;
	private JTable tableEmployees;
	private JButton ingresarBtn;
	private JButton actualizarBtn;
	private JButton verBtn;
	private JButton eliminarBtn;
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
					Start frame = new Start();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	private void cargarTabla() {
		EmployeesService service = new EmployeesService();
		List<Employee> listEmp = service.getAll();
		DefaultTableModel model = new DefaultTableModel();
		model.addColumn("Identificador");
		model.addColumn("Nombre");
		model.addColumn("Apellido");
		model.addColumn("Correo");
		model.addColumn("Fecha Contrato");
		for(Employee e: listEmp) {
			Object[] fila = new Object[5];
			fila[0] = e.getEmployeeId();
			fila[1] = e.getFirstName();
			fila[2] = e.getLastName();
			fila[3] = e.getEmail();
			fila[4] = e.getHireDate();
			model.addRow(fila);
		}
		tableEmployees.setModel(model);
		
	}
	/**
	 * Create the frame.
	 */
	public Start() {
		setTitle("Administraci\u00F3n de Recurso Humano");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 748, 496);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(29, 212, 682, 214);
		contentPane.add(scrollPane);
		
		tableEmployees = new JTable();
		scrollPane.setViewportView(tableEmployees);
		
		ingresarBtn = new JButton("Ingresar Cargo");
		ingresarBtn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				IngresarCargoFrame ingre = new IngresarCargoFrame();
				ingre.setVisible(true);
			}
		});
		ingresarBtn.setBounds(15, 40, 171, 29);
		contentPane.add(ingresarBtn);
		
		actualizarBtn = new JButton("Actualizar Cargo");
		actualizarBtn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				ActualizarCargoFrame actualizar = new ActualizarCargoFrame();
				actualizar.setVisible(true);
			}
		});
		actualizarBtn.setBounds(15, 72, 171, 29);
		contentPane.add(actualizarBtn);
		
		verBtn = new JButton("Mostrar Cargos");
		verBtn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				VerCargosFrame ver = new VerCargosFrame();
				ver.setVisible(true);
			}
		});
		verBtn.setBounds(15, 139, 171, 29);
		contentPane.add(verBtn);
		
		eliminarBtn = new JButton("Eliminar Cargo");
		eliminarBtn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				EliminarCargoFrame eliminar = new EliminarCargoFrame();
				eliminar.setVisible(true);
			}
		});
		eliminarBtn.setBounds(15, 105, 171, 29);
		contentPane.add(eliminarBtn);
		
		lblNewLabel = new JLabel("Listado de colaboradores Ordenados por Apellido");
		lblNewLabel.setFont(new Font("Arial", Font.BOLD, 18));
		lblNewLabel.setBounds(153, 160, 461, 47);
		contentPane.add(lblNewLabel);
		
		lblCargos = new JLabel("Cargos");
		lblCargos.setFont(new Font("Arial", Font.BOLD, 18));
		lblCargos.setBounds(47, 0, 83, 47);
		contentPane.add(lblCargos);
		
		lblRegiones = new JLabel("Regiones");
		lblRegiones.setFont(new Font("Arial", Font.BOLD, 18));
		lblRegiones.setBounds(264, 0, 83, 47);
		contentPane.add(lblRegiones);
		cargarTabla();
	}
}
