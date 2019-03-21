
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, unique-id, catkin, pythonPackages, feed-the-troll-msgs, rocon-console, uuid-msgs, rostest, rosgraph, rospy, dynamic-reconfigure, rocon-python-utils }:
buildRosPackage {
  pname = "ros-kinetic-feed-the-troll";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/stonier/feed_the_troll-release/archive/release/kinetic/feed_the_troll/0.1.1-0.tar.gz;
    sha256 = "5676c27d3395d17fcb697f732b80679bb425f5905aaa1d392126be661af93fa1";
  };

  propagatedBuildInputs = [ unique-id pythonPackages.termcolor uuid-msgs feed-the-troll-msgs rocon-console rosgraph dynamic-reconfigure rospy rocon-python-utils ];
  nativeBuildInputs = [ unique-id pythonPackages.termcolor catkin uuid-msgs rostest feed-the-troll-msgs rocon-console rosgraph dynamic-reconfigure rospy rocon-python-utils ];

  meta = {
    description = ''Mechanisms for loading a ros node at runtime.'';
    #license = lib.licenses.MIT;
  };
}
