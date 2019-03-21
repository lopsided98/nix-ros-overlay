
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, catkin, message-generation, message-runtime, std-msgs, genmsg }:
buildRosPackage {
  pname = "ros-melodic-industrial-msgs";
  version = "0.7.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_msgs/0.7.0-0.tar.gz;
    sha256 = "dfccafb19b7d79ae310f7ed1b741b2d11921c5392d0bc4f45257738b8f7bba47";
  };

  propagatedBuildInputs = [ std-msgs genmsg trajectory-msgs message-runtime ];
  nativeBuildInputs = [ message-generation trajectory-msgs std-msgs genmsg catkin ];

  meta = {
    description = ''The industrial message package containes industrial specific messages 
	definitions. This package is part of the ROS-Industrial program.'';
    #license = lib.licenses.BSD;
  };
}
