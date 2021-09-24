
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, hardware-interface, joint-limits-interface, realtime-tools, rm-common, rm-msgs, roscpp, roslint, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-rm-base";
  version = "0.1.1-r5";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_base/0.1.1-5.tar.gz";
    name = "0.1.1-5.tar.gz";
    sha256 = "c184b98b34c7e3d521ec64f85fb0983fb33ccaaca0b1a2a1a65cd1cee165cbea";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface controller-manager hardware-interface joint-limits-interface realtime-tools rm-common rm-msgs roscpp roslint transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS control warped interface for RoboMaster motor and some robot hardware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
