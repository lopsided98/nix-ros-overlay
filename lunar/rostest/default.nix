
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosmaster, boost, catkin, rosgraph, rospy, roslaunch, rosunit }:
buildRosPackage {
  pname = "ros-lunar-rostest";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rostest/1.13.7-0.tar.gz;
    sha256 = "2c30e1e8d6d1692be92c89559fb7f6e0603163b1c4a02fdaf21ec3daf874d070";
  };

  buildInputs = [ rosunit boost ];
  propagatedBuildInputs = [ rosmaster boost rosgraph rospy roslaunch rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Integration test suite based on roslaunch that is compatible with xUnit frameworks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
