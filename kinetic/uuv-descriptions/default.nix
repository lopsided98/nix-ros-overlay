
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, uuv-gazebo-ros-plugins, uuv-sensor-ros-plugins, uuv-assistants, catkin, rostest, robot-state-publisher, rosunit, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-uuv-descriptions";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_descriptions/0.6.12-0.tar.gz;
    sha256 = "23d052276a059dcd0a40c8c2280e416781f9dd94242a157f94767df3f397843a";
  };

  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ gazebo-ros uuv-gazebo-ros-plugins uuv-sensor-ros-plugins uuv-assistants robot-state-publisher xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_descriptions package'';
    license = with lib.licenses; [ asl20 ];
  };
}
