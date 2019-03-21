
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-marti-can-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/kinetic/marti_can_msgs/0.8.0-0.tar.gz;
    sha256 = "6971570a1b849b2df76f089bf7cd30389afafa8d2af6925704f3a4062032b8ec";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''marti_can_msgs'';
    #license = lib.licenses.BSD;
  };
}
