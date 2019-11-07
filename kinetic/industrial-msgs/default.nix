
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-industrial-msgs";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/kinetic/industrial_msgs/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "34ef8617c1df4e74cfc97985a20ab16232f4b1ae11ec8f1789cb1db63f481052";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs trajectory-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs trajectory-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The industrial message package containes industrial specific messages 
	definitions. This package is part of the ROS-Industrial program.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
