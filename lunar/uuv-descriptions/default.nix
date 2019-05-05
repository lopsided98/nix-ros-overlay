
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, uuv-gazebo-ros-plugins, uuv-sensor-ros-plugins, uuv-assistants, catkin, rostest, robot-state-publisher, rosunit, xacro, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-lunar-uuv-descriptions";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_descriptions/0.6.10-0.tar.gz;
    sha256 = "23c1dab26d970118f216a818efc2980ad640797831b8257084a9baa8b1657a25";
  };

  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ gazebo-ros uuv-gazebo-ros-plugins uuv-sensor-ros-plugins uuv-assistants robot-state-publisher gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_descriptions package'';
    license = with lib.licenses; [ asl20 ];
  };
}
