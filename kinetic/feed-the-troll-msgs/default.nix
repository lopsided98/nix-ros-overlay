
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuid-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-feed-the-troll-msgs";
  version = "0.1.1";

  src = fetchurl {
    url = https://github.com/stonier/feed_the_troll_msgs-release/archive/release/kinetic/feed_the_troll_msgs/0.1.1-0.tar.gz;
    sha256 = "075cf9581432b2585529375d7e86772a8b3b0690910f9dcf2fa7656f8624f3ba";
  };

  propagatedBuildInputs = [ uuid-msgs message-runtime ];
  nativeBuildInputs = [ uuid-msgs catkin message-generation ];

  meta = {
    description = ''Messages used to feed the trolls.'';
    #license = lib.licenses.MIT;
  };
}
