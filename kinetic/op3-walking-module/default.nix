
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, boost, op3-kinematics-dynamics, sensor-msgs, eigen-conversions, std-msgs, catkin, cmake-modules, roslib, robotis-device, libyamlcpp, op3-walking-module-msgs, eigen, robotis-framework-common, roscpp, robotis-math }:
buildRosPackage {
  pname = "ros-kinetic-op3-walking-module";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-OP3-release/archive/release/kinetic/op3_walking_module/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "e9c4ba310ba1bc8578c1afe440d4eebf7365e1e3008b30b328718ccc616d9dd3";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost op3-kinematics-dynamics sensor-msgs eigen-conversions std-msgs cmake-modules roslib robotis-device libyamlcpp op3-walking-module-msgs eigen robotis-framework-common roscpp robotis-math ];
  propagatedBuildInputs = [ robotis-controller-msgs sensor-msgs op3-kinematics-dynamics boost eigen-conversions std-msgs cmake-modules roslib robotis-device libyamlcpp op3-walking-module-msgs eigen robotis-framework-common roscpp robotis-math ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_walking_module package'';
    license = with lib.licenses; [ asl20 ];
  };
}
