
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-hector-nav-msgs";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_nav_msgs/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "7e70c68c630259704f00ad681625e1b7ff94d90753cb01947d23399a022f2848";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_nav_msgs contains messages and services used in the hector_slam stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
