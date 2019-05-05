
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-tilt-laser-interface, joint-trajectory-generator, pr2-common-action-msgs, catkin, pr2-arm-move-ik, pr2-tuck-arms-action, joint-trajectory-action-tools }:
buildRosPackage {
  pname = "ros-lunar-pr2-common-actions";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/lunar/pr2_common_actions/0.0.11-0.tar.gz;
    sha256 = "ce845a48bb843322d77eae4a8b4977f9778e9597d869de6036cbd38a72d5b691";
  };

  propagatedBuildInputs = [ pr2-tilt-laser-interface joint-trajectory-generator pr2-common-action-msgs pr2-arm-move-ik pr2-tuck-arms-action joint-trajectory-action-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various actions which help in moving the arms of the PR2
    or getting data from its tilting laser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
