
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-hri-msgs";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/hri_msgs-release/archive/release/melodic/hri_msgs/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "552cfe799402fdb0192243957a3a05a09493acaeaba9f4bc2638dcf64ca468a7";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages, services and action definitions useful for Human-Robot Interaction'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
