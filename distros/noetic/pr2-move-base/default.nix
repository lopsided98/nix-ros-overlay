
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dynamic-reconfigure, move-base-msgs, pr2-common-action-msgs, pr2-controllers-msgs, pr2-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-pr2-move-base";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/noetic/pr2_move_base/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "92f10f4bbf993c229a8336a93fdb0868e835a43ad4b5ef42a890c21e8006bff5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs dynamic-reconfigure move-base-msgs pr2-common-action-msgs pr2-controllers-msgs pr2-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2_move_base'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
