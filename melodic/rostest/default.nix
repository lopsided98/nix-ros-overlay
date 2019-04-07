
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosmaster, boost, catkin, rosgraph, rospy, roslaunch, rosunit }:
buildRosPackage {
  pname = "ros-melodic-rostest";
  version = "1.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rostest/1.14.3-0.tar.gz;
    sha256 = "90e7b4ba3167ae06f5ad213c193b0c5ab7888b4abd75542a3d7c02592ef9c707";
  };

  buildInputs = [ rosunit boost ];
  propagatedBuildInputs = [ rosmaster rosgraph boost rospy roslaunch rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Integration test suite based on roslaunch that is compatible with xUnit frameworks.'';
    #license = lib.licenses.BSD;
  };
}
