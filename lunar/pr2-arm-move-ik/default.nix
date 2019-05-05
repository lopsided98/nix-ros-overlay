
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, actionlib-msgs, pr2-common-action-msgs, catkin, roscpp, urdf, actionlib, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-pr2-arm-move-ik";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/lunar/pr2_arm_move_ik/0.0.11-0.tar.gz;
    sha256 = "21570d7a8f6458d39d26f36fcdca8bcdff3ccadc24c068e5febbc1e7c3ca5d73";
  };

  buildInputs = [ pr2-controllers-msgs actionlib-msgs pr2-common-action-msgs tf urdf actionlib roscpp geometry-msgs ];
  propagatedBuildInputs = [ pr2-controllers-msgs actionlib-msgs pr2-common-action-msgs tf urdf actionlib roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Move the pr2 arm using inverse kinematics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
