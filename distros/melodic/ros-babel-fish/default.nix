
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, openssl, ros-babel-fish-test-msgs, rosapi, roscpp, roscpp-tutorials, rosgraph-msgs, roslib, rostest, std-msgs, std-srvs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-ros-babel-fish";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/StefanFabian/ros_babel_fish-release/archive/release/melodic/ros_babel_fish/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "394a08a9ae770f97183f60302b4a037b9ed207b4480c1937e7e5aa85e62751fb";
  };

  buildType = "catkin";
  checkInputs = [ geometry-msgs ros-babel-fish-test-msgs rosapi roscpp-tutorials rosgraph-msgs rostest std-msgs std-srvs visualization-msgs ];
  propagatedBuildInputs = [ actionlib openssl roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A runtime message handler for ROS.
    Allows subscription, publishing, calling of services and actions with messages known only at runtime.'';
    license = with lib.licenses; [ mit ];
  };
}
