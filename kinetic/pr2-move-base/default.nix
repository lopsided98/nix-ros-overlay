
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, pr2-msgs, actionlib, catkin, actionlib-msgs, pr2-controllers-msgs, rospy, pr2-common-action-msgs, move-base-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-move-base";
  version = "0.1.28";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/kinetic/pr2_move_base/0.1.28-0.tar.gz";
    name = "0.1.28-0.tar.gz";
    sha256 = "4cbc68d5c798258cf24d035d72be27139e2dd18a68f8c42356ccc55c512747f7";
  };

  buildType = "catkin";
  buildInputs = [ pr2-msgs dynamic-reconfigure actionlib actionlib-msgs pr2-controllers-msgs rospy pr2-common-action-msgs move-base-msgs ];
  propagatedBuildInputs = [ pr2-msgs dynamic-reconfigure actionlib actionlib-msgs pr2-controllers-msgs rospy pr2-common-action-msgs move-base-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_move_base'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
