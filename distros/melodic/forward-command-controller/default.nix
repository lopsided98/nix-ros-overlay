
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, realtime-tools, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-forward-command-controller";
  version = "0.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/forward_command_controller/0.17.0-1.tar.gz";
    name = "0.17.0-1.tar.gz";
    sha256 = "851506838fdda35c65514dc42d4ecaa89618376cdde5617a204e42ecb86adb63";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface hardware-interface realtime-tools std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''forward_command_controller'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
