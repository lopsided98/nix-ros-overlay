
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-tricycle-controller, cob-twist-controller, cob-control-msgs, cob-base-controller-utils, cob-model-identifier, cob-cartesian-controller, catkin, cob-base-velocity-smoother, cob-footprint-observer, cob-collision-velocity-filter, cob-trajectory-controller, cob-omni-drive-controller, cob-control-mode-adapter, cob-frame-tracker, cob-obstacle-distance }:
buildRosPackage {
  pname = "ros-melodic-cob-control";
  version = "0.8.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_control/0.8.0-1.tar.gz;
    sha256 = "0954cda7ea3fe44c91fbc9671b523b1580d97733f89f712a51762a8d9c5b7bb4";
  };

  propagatedBuildInputs = [ cob-tricycle-controller cob-twist-controller cob-control-msgs cob-base-controller-utils cob-model-identifier cob-cartesian-controller cob-base-velocity-smoother cob-footprint-observer cob-collision-velocity-filter cob-trajectory-controller cob-omni-drive-controller cob-control-mode-adapter cob-frame-tracker cob-obstacle-distance ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_control meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
