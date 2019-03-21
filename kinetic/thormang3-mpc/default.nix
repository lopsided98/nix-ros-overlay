
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-module-tutorial, thormang3-gripper-module, ati-ft-sensor, motion-module-tutorial, thormang3-base-module, thormang3-head-control-module, catkin, thormang3-manager, thormang3-kinematics-dynamics, thormang3-walking-module, thormang3-balance-control, thormang3-manipulation-module, thormang3-feet-ft-module, thormang3-action-module }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-mpc";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_mpc/0.2.0-0.tar.gz;
    sha256 = "e320e1ec685fcdea26028a9659290d4fa26dd4271bbb63cb44944d36e049402a";
  };

  propagatedBuildInputs = [ sensor-module-tutorial thormang3-gripper-module ati-ft-sensor motion-module-tutorial thormang3-base-module thormang3-head-control-module thormang3-manager thormang3-kinematics-dynamics thormang3-walking-module thormang3-balance-control thormang3-manipulation-module thormang3-feet-ft-module thormang3-action-module ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for the thormang3_mpc (meta package)'';
    #license = lib.licenses.Apache 2.0;
  };
}
