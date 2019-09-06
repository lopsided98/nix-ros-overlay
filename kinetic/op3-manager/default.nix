
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamixel-sdk, op3-online-walking-module-msgs, op3-head-control-module, op3-action-module, op3-walking-module-msgs, op3-balance-control, robotis-controller-msgs, robotis-framework-common, op3-base-module, op3-kinematics-dynamics, op3-direct-control-module, op3-walking-module, catkin, robotis-controller, op3-action-module-msgs, robotis-math, robotis-device, roscpp, op3-online-walking-module, cmake-modules, open-cr-module, op3-localization }:
buildRosPackage {
  pname = "ros-kinetic-op3-manager";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_manager/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "71c856f26a789b7da5d975cd3034f0073381d0002a9f6a6c780c677c00e5c69a";
  };

  buildType = "catkin";
  buildInputs = [ dynamixel-sdk op3-online-walking-module-msgs op3-action-module op3-head-control-module op3-walking-module-msgs op3-balance-control robotis-controller-msgs robotis-framework-common op3-base-module op3-kinematics-dynamics op3-direct-control-module op3-walking-module robotis-controller op3-action-module-msgs robotis-math robotis-device roscpp op3-online-walking-module cmake-modules open-cr-module ];
  propagatedBuildInputs = [ dynamixel-sdk op3-online-walking-module-msgs op3-action-module op3-head-control-module op3-walking-module-msgs op3-balance-control robotis-controller-msgs robotis-framework-common op3-base-module op3-kinematics-dynamics op3-direct-control-module op3-walking-module robotis-controller op3-action-module-msgs robotis-math robotis-device roscpp op3-online-walking-module cmake-modules open-cr-module op3-localization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_manager package'';
    license = with lib.licenses; [ asl20 ];
  };
}
