
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, openssl, ros-babel-fish-test-msgs, rosapi, roscpp, roscpp-tutorials, rosgraph-msgs, roslib, rostest, std-msgs, std-srvs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-ros-babel-fish";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/StefanFabian/ros_babel_fish-release/archive/release/melodic/ros_babel_fish/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "a77c88ba1fbe3131cb23d79a40eda505d5243dcd2439765f3f234b3fec442283";
  };

  buildType = "catkin";
  checkInputs = [ geometry-msgs ros-babel-fish-test-msgs rosapi roscpp-tutorials rosgraph-msgs rostest std-msgs std-srvs visualization-msgs ];
  propagatedBuildInputs = [ actionlib openssl roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_babel_fish package'';
    license = with lib.licenses; [ mit ];
  };
}
