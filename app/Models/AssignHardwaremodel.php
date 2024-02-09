<?php
namespace App\Models;
use CodeIgniter\Model;

class AssignHardwaremodel extends Model
{
    protected $table='assign_hardware';
    protected $primaryKey='assign_id';
    protected $allowedFields=[  'uid',
                                'hardware_id',
                                'dt',
                                'status'
                             ];
}
?>