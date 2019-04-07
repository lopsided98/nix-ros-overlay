
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-uuid-msgs";
  version = "1.0.6";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/unique_identifier-release/archive/release/melodic/uuid_msgs/1.0.6-0.tar.gz;
    sha256 = "c00cacdbfc12e1cc2715a8531eae1fc69700362b2abab974d03d70de5de6d2b5";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for universally unique identifiers.'';
    #license = lib.licenses.BSD;
  };
}
