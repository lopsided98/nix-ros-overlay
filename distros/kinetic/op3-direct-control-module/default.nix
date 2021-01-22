
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, eigen, op3-kinematics-dynamics, robotis-controller-msgs, robotis-device, robotis-framework-common, robotis-math, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-direct-control-module";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_direct_control_module/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "a109785f38e9c1394c466ad929d051e4ce37379b08e3fc0a48e5157b6c263c7f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules eigen op3-kinematics-dynamics robotis-controller-msgs robotis-device robotis-framework-common robotis-math roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_direct_control_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
