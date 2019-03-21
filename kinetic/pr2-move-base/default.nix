
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, actionlib-msgs, pr2-common-action-msgs, catkin, move-base-msgs, pr2-msgs, actionlib, rospy, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-pr2-move-base";
  version = "0.1.28";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/pr2_move_base/0.1.28-0.tar.gz;
    sha256 = "4cbc68d5c798258cf24d035d72be27139e2dd18a68f8c42356ccc55c512747f7";
  };

  propagatedBuildInputs = [ move-base-msgs pr2-controllers-msgs dynamic-reconfigure actionlib-msgs actionlib rospy pr2-common-action-msgs pr2-msgs ];
  nativeBuildInputs = [ pr2-controllers-msgs actionlib-msgs pr2-common-action-msgs catkin move-base-msgs actionlib dynamic-reconfigure rospy pr2-msgs ];

  meta = {
    description = ''pr2_move_base'';
    #license = lib.licenses.BSD;
  };
}
