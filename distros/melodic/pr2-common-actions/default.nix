
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-trajectory-action-tools, joint-trajectory-generator, pr2-arm-move-ik, pr2-common-action-msgs, pr2-tilt-laser-interface, pr2-tuck-arms-action }:
buildRosPackage {
  pname = "ros-melodic-pr2-common-actions";
  version = "0.0.11";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/melodic/pr2_common_actions/0.0.11-0.tar.gz";
    name = "0.0.11-0.tar.gz";
    sha256 = "80fd608e81e3b4797e06188ddba9351c1cd1937e04985ff61c6c4d72e8a546ea";
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
