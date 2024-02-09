<h1>Employee Dashboard</h1>
<section>

		<table id="kt_datatable_example_1" class="table table-striped table-row-bordered gy-5 gs-7 border rounded">
			<thead>
			<tr class="fw-bolder fs-6 text-gray-800 px-7">
					<th class="text-dark fw-bolder my-1 fs-3 lh-5">Hardware Type</th>
					<th class="text-dark fw-bolder my-1 fs-3 lh-5">Hardware Model</th>
					<th class="text-dark fw-bolder my-1 fs-3 lh-5">Company Name</th>
					<th class="text-dark fw-bolder my-1 fs-3 lh-5">Manufacture Serial Number</th>
					<th class="text-dark fw-bolder my-1 fs-3 lh-5">Organisation Serial Number</th>
				
				</tr>
			</thead>
			<tbody>
			<?php
				foreach($sql as $row =>$val)
				{
			?>
				<tr>
					<td class="text-gray-600 fw-bold fs-6"><?php echo $val['hardware_type'];?></td>
					<td class="text-gray-600 fw-bold fs-6"><?php echo $val['hwd_model'];?></td>
					<td class="text-gray-600 fw-bold fs-6"><?php echo $val['company'];?></td>
					<td class="text-gray-600 fw-bold fs-6"><?php echo $val['serial_number'];?></td>
					<td class="text-gray-600 fw-bold fs-6"><?php echo $val['org_snumber'];?></td>
				</tr>
			<?php
				}
			?>
			</tbody>

		</table>


</section>
	<script type="text/javascript">
        $("#kt_datatable_example_1").DataTable({
        "language": {
        "lengthMenu": "Show _MENU_",
        },
        "dom":
        "<'row'" +
        "<'col-sm-6 d-flex align-items-center justify-conten-start'l>" +
        "<'col-sm-6 d-flex align-items-center justify-content-end'f>" +
        ">" +

        "<'table-responsive'tr>" +

        "<'row'" +
        "<'col-sm-12 col-md-5 d-flex align-items-center justify-content-center justify-content-md-start'i>" +
        "<'col-sm-12 col-md-7 d-flex align-items-center justify-content-center justify-content-md-end'p>" +
        ">"
        });
    </script>
