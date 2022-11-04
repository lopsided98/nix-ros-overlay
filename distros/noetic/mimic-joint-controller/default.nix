
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-mimic-joint-controller";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/mimic_joint_controller/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "583df314fc48f83c8bba3195a19519cb778810d1a268f76b3d129891d41aa513";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mimic_joint_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
