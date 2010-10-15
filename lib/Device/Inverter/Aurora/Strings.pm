package Device::Inverter::Aurora::Strings;

use 5.008008;
use warnings;
use strict;

require Exporter;

our $VERSION = '0.01';

our @ISA = qw/Exporter/;
our @EXPORT = qw/
	%ProductNames
	%ProductSpec
	@TransmissionStates
	@GlobalStates
	@InverterStates
	@DCDCStates
	@AlarmStates
	@ConfigurationStrings
/;

our %ProductNames = (
	'i' => 'Aurora 2 kW indoor',
	'o' => 'Aurora 2 kW outdoor',
	'I' => 'Aurora 3.6 kW indoor',
	'O' => 'Aurora 3.0-3.6 kW outdoor',
	'5' => 'Aurora 5.0 kW outdoor',
	'6' => 'Aurora 6 kW outdoor',
	'P' => '3-phase interface (3G74)',
	'C' => 'Aurora 50 kW module',
	'4' => 'Aurora 4.2 kW new',
	'3' => 'Aurora 3.6 kW new',
	'2' => 'Aurora 3.3 kW new',
	'1' => 'Aurora 3.0 kW new',
	'D' => 'Aurora 12.0 kW',
	'X' => 'Aurora 10 kW',
);

our %ProductSpec = (
	'A' => 'UL1741',
	'E' => 'VDE0126',
	'S' => 'DR 1663/2000',
	'I' => 'ENEL DK 5950',
	'U' => 'UK G83',
	'K' => 'AS 4777',
	'F' => 'VDE French Model',
);

our @TransmissionStates = (
	'Everything is OK',
	(undef)x50,            # Placeholders
	'Command is not implemented',
	'Variable does not exist',
	'Variable value is out of range',
	'EEprom not accessible',
	'Cannot send the command to internal micro',
	'Command not Executed',
	'The variable is not available, retry',
);

our @GlobalStates = (
	'Sending Parameters',
	'Wait Sun/Grid',
	'Checking Grid',
	'Measuring Riso',
	'DcDc Start',
	'Inverter Turn-On',
	'Run',
	'Recovery',
	'Pause',
	'Ground Fault',
	'OTH Fault',
	'Address Setting',
	'Self Test',
	'Self Test Fail',
	'Sensor Test + Measure Riso',
	'Leak Fault',
	'Waiting for manual reset',
	'Internal Error E026',
	'Internal Error E027',
	'Internal Error E028',
	'Internal Error E029',
	'Internal Error E030',
	'Sending Wind Table',
	'Failed Sending Table',
	'UTH Fault',
	'Remote Off',
	'Interlock Fail',
	'Executing Autotest',
	undef, undef,
	'Waiting Sun',
	'Temperature Fault',
	'Fan Staucked',
	'Int. Com. Fail',
	'Slave Insertion',
	'DC Switch Open',
	'TRAS Switch Open',
	'MASTER Exclusion',
	'Auto Exclusion',
	(undef)x59,
	'Erasing Internal EEprom',
	'Erasing External EEprom',
	'Counting EEprom',
	'Freeze',
);

our @InverterStates = (
	'Stand By',
	'Checking Grid',
	'Run',
	'Bulk Over Voltage',
	'Out Over Current',
	'IGBT Sat',
	'Bulk Under Voltage',
	'Degauss Error',
	'No Parameters',
	'Bulk Low',
	'Grid Over Voltage',
	'Communication Error',
	'Degaussing',
	'Starting',
	'Bulk Cap Fail',
	'Leak Fail',
	'DcDc Fail',
	'Ileak Sensor Fail',
	'SelfTest: relay inverter',
	'SelfTest: wait for sensor test',
	'SelfTest: test relay DcDc + sensor',
	'SelfTest: relay inverter fail',
	'SelfTest: timeout fail',
	'SelfTest: relay DcDc fail',
	'Self Test 1',
	'Waiting self test start',
	'Dc Injection',
	'Self Test 2',
	'Self Test 3',
	'Self Test 4',
	'Internal Error (30)',
	'Internal Error (31)',
	(undef)x8,
	'Forbidden State',
	'Input UC',
	'Zero Power',
	'Grid Not Present',
	'Waiting Start',
	'MPPT',
	'Grid Fail',
	'Input OC',
);

our @DCDCStates = (
	'DcDc OFF',
	'Ramp Start',
	'MPPT',
	'not used',
	'Input Over Current',
	'Input Under Voltage',
	'Input Over Voltage',
	'Input Low',
	'No Parameters',
	'Bulk Over Voltage',
	'Communication Error',
	'Ramp Fail',
	'Internal Error',
	'Input mode Error',
	'Ground Fault',
	'Inverter Fail',
	'DcDc IGBT Sat',
	'DcDc ILEAK Fail',
	'DcDc Grid Fail',
	'DcDc Comm. Error',
);

our @AlarmStates = (
	'No Alarm',
	'Sun Low W001 (1)',
	'Input Over Current E001',
	'Input Under Voltage W002',
	'Input Over Voltage E002',
	'Sun Low W001 (5)',
	'No Parameters E003',
	'Bulk Over Voltage E004',
	'Comm. Error E005',
	'Output Over Current E006',
	'IGBT Sat E007',
	'Bulk UV W011',
	'Internal error E009',
	'Grid Fail W003',
	'Bulk Low E010',
	'Ramp Fail E011',
	'Dc/Dc Fail E012',
	'Wrong Mode E013',
	'Ground Fault (18)',
	'Over Temp. E014',
	'Bulk Cap Fail E015',
	'Inverter Fail E016',
	'Start Timeout E017',
	'Ground Fault E018 (23)',
	'Degauss error (24)',
	'Ileak Sens. fail E019',
	'DcDc Fail E012',
	'Self Test Error 1 E020',
	'Self Test Error 2 E021',
	'Self Test Error 3 E019',
	'Self Test Error 4 E022',
	'DC inj error E023',
	'Grid Over Voltage W004',
	'Grid Under Voltage W005',
	'Grid OF W006',
	'Grid UF W007',
	'Z grid Hi W008',
	'Internal error E024',
	'Riso Low E025',
	'Vref Error E026',
	'Error Meas V E027',
	'Error Meas F E028',
	'Error Meas I E029',
	'Error Meas Ileak E030',
	'Read Error V E031',
	'Read Error I E032',
	'Table fail W009',
	'Fan Fail W010',
	'UTH E033',
	'Interlock Fail',
	'Remote Off',
	'Vout Avg error',
	'Battery low',
	'Clk fail',
	'Input UC',
	'Zero Power',
	'Fan Stucked',
	'DC Switch Open',
	'Tras Switch Open',
	'AC Switch Open',
	'Bulk UV',
	'Autoexclusion',
	'Grid df/dt',
	'Den switch Open',
	'Jbox fail',
);

our @ConfigurationStrings = (
	'System operating with both strings.',
	'String 1 connected, String 2 disconnected.',
	'String 2 connected, String 1 disconnected.',
);


1;
