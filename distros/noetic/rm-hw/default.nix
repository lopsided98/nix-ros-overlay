
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, hardware-interface, joint-limits-interface, realtime-tools, rm-common, rm-msgs, roscpp, roslint, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-rm-hw";
  version = "0.1.17-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_control-release/archive/release/noetic/rm_hw/0.1.17-1.tar.gz";
    name = "0.1.17-1.tar.gz";
    sha256 = "59d3e3759385c1c4ddcbcaf41f3f542a0ea030dd052c5787092cba798830ad4e";
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
