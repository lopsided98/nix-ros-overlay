
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-nav-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_msgs-release/archive/release/melodic/nav_msgs/1.12.7-0.tar.gz;
    sha256 = "614b3c69348013d8d3fc72c67652ad3b02057376044e63a29210261be1406eac";
  };

  buildInputs = [ std-msgs message-generation actionlib-msgs geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime actionlib-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''nav_msgs defines the common messages used to interact with the
    <a href="http://wiki.ros.org/navigation">navigation</a> stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
