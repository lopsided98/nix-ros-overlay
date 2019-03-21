
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-tricycle-controller, cob-twist-controller, cob-control-msgs, cob-base-controller-utils, cob-model-identifier, cob-cartesian-controller, catkin, cob-base-velocity-smoother, cob-footprint-observer, cob-collision-velocity-filter, cob-trajectory-controller, cob-omni-drive-controller, cob-control-mode-adapter, cob-frame-tracker, cob-obstacle-distance }:
buildRosPackage {
  pname = "ros-kinetic-cob-control";
  version = "0.7.3";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_control/0.7.3-0.tar.gz;
    sha256 = "e224c0d000836c0952633780c95961a466bfaba03f2b38d5e5f96be3efb943b7";
  };

  propagatedBuildInputs = [ cob-tricycle-controller cob-twist-controller cob-control-msgs cob-base-controller-utils cob-model-identifier cob-cartesian-controller cob-base-velocity-smoother cob-footprint-observer cob-collision-velocity-filter cob-trajectory-controller cob-omni-drive-controller cob-control-mode-adapter cob-frame-tracker cob-obstacle-distance ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_control meta-package'';
    #license = lib.licenses.Apache 2.0;
  };
}
