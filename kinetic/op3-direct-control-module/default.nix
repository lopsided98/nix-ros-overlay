
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, sensor-msgs, boost, op3-kinematics-dynamics, std-msgs, cmake-modules, robotis-device, catkin, eigen, robotis-framework-common, roscpp, robotis-math }:
buildRosPackage {
  pname = "ros-kinetic-op3-direct-control-module";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_direct_control_module/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "a109785f38e9c1394c466ad929d051e4ce37379b08e3fc0a48e5157b6c263c7f";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost op3-kinematics-dynamics sensor-msgs std-msgs cmake-modules robotis-device eigen robotis-framework-common roscpp robotis-math ];
  propagatedBuildInputs = [ robotis-controller-msgs sensor-msgs op3-kinematics-dynamics boost std-msgs cmake-modules robotis-device eigen robotis-framework-common roscpp robotis-math ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_direct_control_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
