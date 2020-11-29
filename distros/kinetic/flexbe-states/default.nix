
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, flexbe-testing, geometry-msgs, rosbag, rospy, rostest }:
buildRosPackage {
  pname = "ros-kinetic-flexbe-states";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/kinetic/flexbe_states/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "2d1f88e457e3f2158b38f8d422b11f409407a46053b35d1e26e18f77343e3c92";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ geometry-msgs ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-testing rosbag rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_states provides a collection of predefined states.
     Feel free to add new states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
