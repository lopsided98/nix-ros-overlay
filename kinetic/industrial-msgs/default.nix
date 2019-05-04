
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, catkin, message-generation, message-runtime, std-msgs, genmsg }:
buildRosPackage {
  pname = "ros-kinetic-industrial-msgs";
  version = "0.7.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/industrial_core-release/archive/release/kinetic/industrial_msgs/0.7.0-0.tar.gz;
    sha256 = "fe5ef1f0258098cba4d21bd0ca50a0b3e8047ace0c0903efe6cd2b8559647a9f";
  };

  buildInputs = [ std-msgs genmsg message-generation trajectory-msgs ];
  propagatedBuildInputs = [ std-msgs genmsg trajectory-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The industrial message package containes industrial specific messages 
	definitions. This package is part of the ROS-Industrial program.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
