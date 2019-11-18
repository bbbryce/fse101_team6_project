%brick = ConnectBrick('Error 404');

global key
InitKeyboard();
while 1

liftEnabled = false;

    pause(0.1);
    switch key
        case 'uparrow'
            brick.MoveMotorAngleRel('A', 50, 1700, 'Coast'); 
            brick.WaitForMotor('A'); % Wait for motor to complete motion
            
        case 'downarrow'
            brick.MoveMotorAngleRel('A', 50, -1700, 'Coast'); 
            brick.WaitForMotor('A'); % Wait for motor to complete motion
        
        case 'leftarrow'
            brick.MoveMotorAngleAbs('B', 10, 38); 
            brick.WaitForMotor('B'); % Wait for motor to complete motion
            brick.MoveMotorAngleRel('A', 30, -1050, 'Coast'); 
            brick.WaitForMotor('A'); % Wait for motor to complete motion
            brick.MoveMotorAngleAbs('B', 10, 0); 
            brick.WaitForMotor('B'); % Wait for motor to complete motion
            
            %disp(angle);
            
        case 'rightarrow'
            brick.MoveMotorAngleAbs('B', 10, 38); 
            brick.WaitForMotor('B'); % Wait for motor to complete motion
            brick.MoveMotorAngleRel('A', 50, 1100, 'Coast'); 
            brick.WaitForMotor('A'); % Wait for motor to complete motion
            brick.MoveMotorAngleAbs('B', 10, 0); 
            brick.WaitForMotor('B'); % Wait for motor to complete motion
            
            %disp(angle);
			
	    case 'l'
			liftEnabled = ~liftEnabled
			
			if liftEnabled == true
			
                brick.moveMotorAngleRel('C', 50, 950, 'Brake');
			
            else 
			 
                brick.moveMotorAngleRel('C', 50, -950, 'Brake');
            end
			  
        case 0
            disp('No Key Pressed!');
            
        case 'q'
            break;
    end
end
 CloseKeyboard();