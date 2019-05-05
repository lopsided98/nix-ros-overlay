
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, realtime-tools, catkin, controller-interface, std-msgs }:
buildRosPackage {
  pname = "ros-lunar-forward-command-controller";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/forward_command_controller/0.13.4-0.tar.gz;
    sha256 = "81dce67831e19b0019ec31adf58b7e84fdab70c6204f78c02cd866e406e54010";
  };

  buildInputs = [ std-msgs hardware-interface controller-interface realtime-tools ];
  propagatedBuildInputs = [ std-msgs hardware-interface controller-interface realtime-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''forward_command_controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
