
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, uuid-msgs, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-geographic-msgs";
  version = "0.5.3";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/geographic_info-release/archive/release/melodic/geographic_msgs/0.5.3-0.tar.gz;
    sha256 = "68d46a359b8eec02f2ee60c6997f9bf3399925e9f93c453839a07125ce8f959f";
  };

  buildInputs = [ uuid-msgs message-generation std-msgs geometry-msgs ];
  propagatedBuildInputs = [ std-msgs uuid-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for Geographic Information Systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
