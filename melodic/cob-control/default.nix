
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-collision-velocity-filter, cob-footprint-observer, cob-model-identifier, cob-base-velocity-smoother, cob-control-msgs, cob-base-controller-utils, catkin, cob-tricycle-controller, cob-omni-drive-controller, cob-cartesian-controller, cob-control-mode-adapter, cob-twist-controller, cob-hardware-emulation, cob-trajectory-controller, cob-frame-tracker, cob-obstacle-distance }:
buildRosPackage {
  pname = "ros-melodic-cob-control";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_control/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "5f7b91ff5d46b13a707e1a79061dcadf5fb637cb95b227e6e1fe3973a387e8f1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-collision-velocity-filter cob-footprint-observer cob-model-identifier cob-base-controller-utils cob-control-msgs cob-base-velocity-smoother cob-tricycle-controller cob-omni-drive-controller cob-cartesian-controller cob-control-mode-adapter cob-twist-controller cob-hardware-emulation cob-trajectory-controller cob-frame-tracker cob-obstacle-distance ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_control meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
