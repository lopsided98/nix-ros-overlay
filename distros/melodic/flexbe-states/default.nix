
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, flexbe-testing, geometry-msgs, rosbag, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-flexbe-states";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_states/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "f80972cf41f7e4e1e199418f73489f3b9751724749e2bc77a04a398460ab3d1c";
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
