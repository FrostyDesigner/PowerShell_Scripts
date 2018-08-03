
# this is a sneaky way to include the vba InputBox right into Powershell :-)
[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic') | Out-Null
$msgBoxInput =  [System.Windows.MessageBox]::Show('Would you like to play a game?','Game input','YesNoCancel','Question')

  switch  ($msgBoxInput) 
  {
      'Yes' 
      {
            ## Do something 
            [System.Windows.MessageBox]::Show('Wrong! Get back to work!','Warning!',  'OK', 'Hand')
      }

      'No' 
      {
            ## Do something
            $computer = [Microsoft.VisualBasic.Interaction]::InputBox("Enter a computer name", "Computer", "$env:computername")
            $user = [Microsoft.VisualBasic.Interaction]::InputBox("Enter the user name", "User", "$env:username")
            $userDnsDomain = [Microsoft.VisualBasic.Interaction]::InputBox("Enter the user dns domain", "USERDNSDOMAIN", "$env:USERDNSDOMAIN")
            $userDomain = [Microsoft.VisualBasic.Interaction]::InputBox("Enter the user domain", "USERDOMAIN", "$env:USERDOMAIN")
      }

      'Cancel' 
      {
            ## Do something
            # Retrieve the list of current environment variables:
            Get-ChildItem Env:    
      }
  }                          