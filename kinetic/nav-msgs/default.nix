
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, actionlib-msgs, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-nav-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/kinetic/nav_msgs/1.12.7-0.tar.gz";
    name = "1.12.7-0.tar.gz";
    sha256 = "986a5654829d3abf8df823f456b2a2df589af13fe74e77e469395f2ad186c300";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs actionlib-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''nav_msgs defines the common messages used to interact with the
    <a href="http://wiki.ros.org/navigation">navigation</a> stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
