
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-tilt-laser-interface, catkin, pr2-arm-move-ik, joint-trajectory-action-tools, pr2-common-action-msgs, pr2-tuck-arms-action, joint-trajectory-generator }:
buildRosPackage {
  pname = "ros-melodic-pr2-common-actions";
  version = "0.0.11";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/melodic/pr2_common_actions/0.0.11-0.tar.gz";
    name = "0.0.11-0.tar.gz";
    sha256 = "80fd608e81e3b4797e06188ddba9351c1cd1937e04985ff61c6c4d72e8a546ea";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-tilt-laser-interface joint-trajectory-action-tools pr2-arm-move-ik joint-trajectory-generator pr2-tuck-arms-action pr2-common-action-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various actions which help in moving the arms of the PR2
    or getting data from its tilting laser.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
