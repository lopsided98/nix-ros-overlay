
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, actionlib-msgs, pr2-common-action-msgs, catkin, roscpp, urdf, actionlib, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pr2-arm-move-ik";
  version = "0.0.10";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/kinetic/pr2_arm_move_ik/0.0.10-0.tar.gz;
    sha256 = "19f9de89c455340fedfce4e75283e9e27f669159f95fa4a0964cbde883b80eee";
  };

  buildInputs = [ pr2-controllers-msgs actionlib-msgs pr2-common-action-msgs tf urdf actionlib roscpp geometry-msgs ];
  propagatedBuildInputs = [ pr2-controllers-msgs actionlib-msgs pr2-common-action-msgs tf urdf actionlib roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Move the pr2 arm using inverse kinematics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
