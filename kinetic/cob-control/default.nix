
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-collision-velocity-filter, cob-footprint-observer, cob-model-identifier, cob-base-velocity-smoother, cob-control-msgs, cob-base-controller-utils, catkin, cob-tricycle-controller, cob-omni-drive-controller, cob-cartesian-controller, cob-control-mode-adapter, cob-twist-controller, cob-hardware-emulation, cob-trajectory-controller, cob-frame-tracker, cob-obstacle-distance }:
buildRosPackage {
  pname = "ros-kinetic-cob-control";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_control/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "f0468e3414e79f8fad198a983d63bd5b7c0622cf84230a016d6ab3a583a02c6d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-collision-velocity-filter cob-footprint-observer cob-model-identifier cob-base-controller-utils cob-control-msgs cob-base-velocity-smoother cob-tricycle-controller cob-omni-drive-controller cob-cartesian-controller cob-control-mode-adapter cob-twist-controller cob-hardware-emulation cob-trajectory-controller cob-frame-tracker cob-obstacle-distance ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_control meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
