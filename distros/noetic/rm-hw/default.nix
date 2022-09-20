
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, hardware-interface, joint-limits-interface, realtime-tools, rm-common, rm-msgs, roscpp, roslint, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-rm-hw";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_hw/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "16717af03af980d47f5e6be6b72ba1344f5f02784bb6036612b78c597ce6c46d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface controller-manager hardware-interface joint-limits-interface realtime-tools rm-common rm-msgs roscpp roslint transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS control warped interface for RoboMaster motor and some robot hardware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
