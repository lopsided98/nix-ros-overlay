
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-melodic-industrial-msgs";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_msgs/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "1bda13baa0f9ee548fc5bf8699772ab77543e3fc4ac26a7c46282583bc003531";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation trajectory-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The industrial message package containes industrial specific messages 
	definitions. This package is part of the ROS-Industrial program.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
