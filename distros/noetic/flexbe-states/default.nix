
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, flexbe-testing, geometry-msgs, python3Packages, rosbag, rospy, rostest }:
buildRosPackage {
  pname = "ros-noetic-flexbe-states";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/flexbe/flexbe_behavior_engine-release/archive/release/noetic/flexbe_states/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "c0a11796df45f7a8741de73a936e81129de79d3f601bc222cfff9b955a2b86c6";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ geometry-msgs ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-testing rosbag rospy rostest ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''flexbe_states provides a collection of predefined states.
     Feel free to add new states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
