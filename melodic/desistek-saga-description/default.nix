
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, uuv-gazebo-ros-plugins, uuv-sensor-ros-plugins, uuv-assistants, xacro, uuv-descriptions, catkin, rostest, robot-state-publisher, rosunit }:
buildRosPackage {
  pname = "ros-melodic-desistek-saga-description";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/uuvsimulator/desistek_saga-release/archive/release/melodic/desistek_saga_description/0.3.2-0.tar.gz;
    sha256 = "1d23906087b0f5b4119ca5b63d3d621a40f93709a58a61fdab09330e3f712126";
  };

  checkInputs = [ rostest xacro rosunit ];
  propagatedBuildInputs = [ gazebo-ros uuv-gazebo-ros-plugins uuv-sensor-ros-plugins uuv-assistants uuv-descriptions robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot description files for the Desistek SAGA ROV underwater vehicle'';
    license = with lib.licenses; [ asl20 ];
  };
}
