
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, eigen, robotis-controller-msgs, robotis-device, robotis-framework-common, robotis-math, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-head-control-module";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_head_control_module/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "e15b5e6bbd7f152fa92cb9a85361014f3c88defb93bddaab20fea1b72e254ab2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules eigen robotis-controller-msgs robotis-device robotis-framework-common robotis-math roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_head_control_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
