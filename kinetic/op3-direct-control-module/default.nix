
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, sensor-msgs, catkin, roscpp, robotis-math, op3-kinematics-dynamics, eigen, std-msgs, robotis-device, robotis-controller-msgs, robotis-framework-common }:
buildRosPackage {
  pname = "ros-kinetic-op3-direct-control-module";
  version = "0.2.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_direct_control_module/0.2.1-0.tar.gz;
    sha256 = "a109785f38e9c1394c466ad929d051e4ce37379b08e3fc0a48e5157b6c263c7f";
  };

  buildInputs = [ cmake-modules boost sensor-msgs roscpp robotis-math op3-kinematics-dynamics eigen std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];
  propagatedBuildInputs = [ cmake-modules boost sensor-msgs roscpp robotis-math op3-kinematics-dynamics eigen std-msgs robotis-device robotis-controller-msgs robotis-framework-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_direct_control_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
