
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, hardware-interface, pluginlib, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-mimic-joint-controller";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/mimic_joint_controller/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "b3eedf1cfefd8d05f5a2a9ab7c40c9c87fc6a2208da6f3cb46c71322e306e170";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-interface hardware-interface pluginlib roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mimic_joint_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
