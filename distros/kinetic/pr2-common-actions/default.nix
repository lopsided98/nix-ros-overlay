
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-trajectory-action-tools, joint-trajectory-generator, pr2-arm-move-ik, pr2-common-action-msgs, pr2-tilt-laser-interface, pr2-tuck-arms-action }:
buildRosPackage {
  pname = "ros-kinetic-pr2-common-actions";
  version = "0.0.10";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/kinetic/pr2_common_actions/0.0.10-0.tar.gz";
    name = "0.0.10-0.tar.gz";
    sha256 = "7e958b28f188ea7f8461fe2be57f2e2fee7f3cf60c3f6a8218827c357341d0df";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-trajectory-action-tools joint-trajectory-generator pr2-arm-move-ik pr2-common-action-msgs pr2-tilt-laser-interface pr2-tuck-arms-action ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various actions which help in moving the arms of the PR2
    or getting data from its tilting laser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
