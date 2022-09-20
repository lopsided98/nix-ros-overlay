
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, openssl, ros-babel-fish-test-msgs, rosapi, roscpp, roscpp-tutorials, rosgraph-msgs, roslib, rostest, std-msgs, std-srvs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-ros-babel-fish";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/StefanFabian/ros_babel_fish-release/archive/release/melodic/ros_babel_fish/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "52f42f185f4f8f1a838bdfa1057bbd33d2927b5a24d236fa8bff867dff011a05";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ geometry-msgs ros-babel-fish-test-msgs rosapi roscpp-tutorials rosgraph-msgs rostest std-msgs std-srvs visualization-msgs ];
  propagatedBuildInputs = [ actionlib openssl roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A runtime message handler for ROS.
    Allows subscription, publishing, calling of services and actions with messages known only at runtime.'';
    license = with lib.licenses; [ mit ];
  };
}
