
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cm-740-module, op3-action-module, op3-balance-control, op3-base-module, op3-direct-control-module, op3-head-control-module, op3-kinematics-dynamics, op3-localization, op3-manager, op3-online-walking-module, op3-walking-module, open-cr-module }:
buildRosPackage {
  pname = "ros-kinetic-robotis-op3";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/robotis_op3/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "04a0490f12c9d528608eae6bc03fb0e075f27ce5e5e14028a576a001c28f2d0e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cm-740-module op3-action-module op3-balance-control op3-base-module op3-direct-control-module op3-head-control-module op3-kinematics-dynamics op3-localization op3-manager op3-online-walking-module op3-walking-module open-cr-module ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the robotis_op3 (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
