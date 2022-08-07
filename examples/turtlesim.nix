let
    pkgs = import <nixpkgs> { overlays = [ (import ../overlay.nix) ]; };

in

    pkgs.mkShell {
        nativeBuildInputs = with pkgs.rosPackages.humble; [
            (buildEnv {
                paths = [
                    turtlesim
                    ros2run
                ];
            })
        ];

        shellHook = ''
            echo 'Welcome to turtlesim example, please run following commands it two shells:'
            echo '  ros2 run turtlesim turtlesim_node'
            echo '  ros2 run turtlesim turtle_teleop_key'
        '';
    }
