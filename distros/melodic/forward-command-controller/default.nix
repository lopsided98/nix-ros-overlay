
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, realtime-tools, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-forward-command-controller";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/forward_command_controller/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "07e53744b75ecb941adf3741371e89d9eadf284dbdef9ac7bad99af6849daa38";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface hardware-interface realtime-tools std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''forward_command_controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
