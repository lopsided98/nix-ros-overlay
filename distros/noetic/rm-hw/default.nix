
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, hardware-interface, joint-limits-interface, realtime-tools, rm-common, rm-msgs, roscpp, roslint, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-rm-hw";
  version = "0.1.7-r4";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_hw/0.1.7-4.tar.gz";
    name = "0.1.7-4.tar.gz";
    sha256 = "30af91eafacbf2eba6f70205af82ed45c9715d10da9b6105fcc8bb30539f61f6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface controller-manager hardware-interface joint-limits-interface realtime-tools rm-common rm-msgs roscpp roslint transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS control warped interface for RoboMaster motor and some robot hardware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
