
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, sensor-msgs, boost, std-msgs, cmake-modules, robotis-device, catkin, eigen, robotis-framework-common, roscpp, robotis-math }:
buildRosPackage {
  pname = "ros-kinetic-op3-head-control-module";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_head_control_module/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "e15b5e6bbd7f152fa92cb9a85361014f3c88defb93bddaab20fea1b72e254ab2";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost sensor-msgs std-msgs cmake-modules robotis-device eigen robotis-framework-common roscpp robotis-math ];
  propagatedBuildInputs = [ robotis-controller-msgs sensor-msgs boost std-msgs cmake-modules robotis-device eigen robotis-framework-common roscpp robotis-math ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_head_control_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
