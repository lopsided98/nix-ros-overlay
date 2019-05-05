
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, uuv-gazebo-ros-plugins, uuv-sensor-ros-plugins, uuv-assistants, xacro, uuv-descriptions, catkin, rostest, robot-state-publisher, rosunit }:
buildRosPackage {
  pname = "ros-lunar-desistek-saga-description";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/uuvsimulator/desistek_saga-release/archive/release/lunar/desistek_saga_description/0.3.2-0.tar.gz;
    sha256 = "a2f37861d74fa587211c828b12e1cf36995a65ff01412703c7e06ea14f7ae9cb";
  };

  checkInputs = [ rostest xacro rosunit ];
  propagatedBuildInputs = [ gazebo-ros uuv-gazebo-ros-plugins uuv-sensor-ros-plugins uuv-assistants uuv-descriptions robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot description files for the Desistek SAGA ROV underwater vehicle'';
    license = with lib.licenses; [ asl20 ];
  };
}
