
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-nav-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_msgs-release/archive/release/lunar/nav_msgs/1.12.7-0.tar.gz;
    sha256 = "77a253c927f431525b45b1dfaeadf6355a4fa428d3361b472c1a85328d3a7745";
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
