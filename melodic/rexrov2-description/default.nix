
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, uuv-sensor-ros-plugins, uuv-descriptions, robot-state-publisher, uuv-gazebo-ros-plugins, uuv-assistants, catkin, rosunit, gazebo-ros-control, gazebo-ros, rostest }:
buildRosPackage {
  pname = "ros-melodic-rexrov2-description";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/rexrov2-release/archive/release/melodic/rexrov2_description/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "a4da8b1fd519c66c4156c38ff1107731858cf630ef0194fd3fe2e5950a450940";
  };

  buildType = "catkin";
  checkInputs = [ xacro rostest rosunit ];
  propagatedBuildInputs = [ xacro uuv-sensor-ros-plugins uuv-gazebo-ros-plugins robot-state-publisher uuv-descriptions uuv-assistants gazebo-ros-control gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot description files for the RexROV 2 underwater vehicle'';
    license = with lib.licenses; [ asl20 ];
  };
}
