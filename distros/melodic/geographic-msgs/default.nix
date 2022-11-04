
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs, uuid-msgs }:
buildRosPackage {
  pname = "ros-melodic-geographic-msgs";
  version = "0.5.3";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/melodic/geographic_msgs/0.5.3-0.tar.gz";
    name = "0.5.3-0.tar.gz";
    sha256 = "68d46a359b8eec02f2ee60c6997f9bf3399925e9f93c453839a07125ce8f959f";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for Geographic Information Systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
