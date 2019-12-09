
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, pr2-msgs, actionlib, catkin, actionlib-msgs, pr2-controllers-msgs, rospy, pr2-common-action-msgs, move-base-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-move-base";
  version = "0.1.28-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/melodic/pr2_move_base/0.1.28-1.tar.gz";
    name = "0.1.28-1.tar.gz";
    sha256 = "e1b1654f060a9205616412a5edaa451b341e1da5c98fcec3ff0fff2b702d888c";
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
