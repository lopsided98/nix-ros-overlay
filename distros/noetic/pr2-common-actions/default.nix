
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-trajectory-action-tools, joint-trajectory-generator, pr2-arm-move-ik, pr2-common-action-msgs, pr2-tilt-laser-interface, pr2-tuck-arms-action }:
buildRosPackage {
  pname = "ros-noetic-pr2-common-actions";
  version = "0.0.12-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/noetic/pr2_common_actions/0.0.12-1.tar.gz";
    name = "0.0.12-1.tar.gz";
    sha256 = "7dfba611208532414ba926f98c67113d8a227a74c74e8eba44e559a76f6364ac";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-trajectory-action-tools joint-trajectory-generator pr2-arm-move-ik pr2-common-action-msgs pr2-tilt-laser-interface pr2-tuck-arms-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various actions which help in moving the arms of the PR2
    or getting data from its tilting laser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
