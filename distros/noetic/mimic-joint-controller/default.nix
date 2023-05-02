
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, pluginlib, roscpp }:
buildRosPackage {
  pname = "ros-noetic-mimic-joint-controller";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/rm-controls/rm_controllers-release/archive/release/noetic/mimic_joint_controller/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "54ef05843147ff4c0cad36335a55ca27a0959314a0239dd7bc581d1da0e2296a";
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
