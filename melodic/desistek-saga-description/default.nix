
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, uuv-sensor-ros-plugins, uuv-gazebo-ros-plugins, robot-state-publisher, uuv-descriptions, uuv-assistants, catkin, rosunit, gazebo-ros, rostest }:
buildRosPackage {
  pname = "ros-melodic-desistek-saga-description";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/desistek_saga-release/archive/release/melodic/desistek_saga_description/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "1d23906087b0f5b4119ca5b63d3d621a40f93709a58a61fdab09330e3f712126";
  };

  buildType = "catkin";
  checkInputs = [ xacro rostest rosunit ];
  propagatedBuildInputs = [ uuv-sensor-ros-plugins uuv-descriptions robot-state-publisher uuv-gazebo-ros-plugins uuv-assistants gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot description files for the Desistek SAGA ROV underwater vehicle'';
    license = with lib.licenses; [ asl20 ];
  };
}
