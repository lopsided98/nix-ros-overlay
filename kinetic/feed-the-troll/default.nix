
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-console, unique-id, dynamic-reconfigure, rosgraph, pythonPackages, catkin, rocon-python-utils, rospy, uuid-msgs, rostest, feed-the-troll-msgs }:
buildRosPackage {
  pname = "ros-kinetic-feed-the-troll";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/stonier/feed_the_troll-release/archive/release/kinetic/feed_the_troll/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "5676c27d3395d17fcb697f732b80679bb425f5905aaa1d392126be661af93fa1";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.termcolor rocon-console unique-id dynamic-reconfigure rosgraph rocon-python-utils rospy uuid-msgs rostest feed-the-troll-msgs ];
  propagatedBuildInputs = [ pythonPackages.termcolor rocon-console unique-id dynamic-reconfigure rosgraph rocon-python-utils rospy uuid-msgs feed-the-troll-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Mechanisms for loading a ros node at runtime.'';
    license = with lib.licenses; [ mit ];
  };
}
