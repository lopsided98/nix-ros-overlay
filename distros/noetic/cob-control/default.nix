
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-base-controller-utils, cob-base-velocity-smoother, cob-cartesian-controller, cob-collision-velocity-filter, cob-control-mode-adapter, cob-control-msgs, cob-footprint-observer, cob-frame-tracker, cob-hardware-emulation, cob-mecanum-controller, cob-model-identifier, cob-obstacle-distance, cob-omni-drive-controller, cob-trajectory-controller, cob-tricycle-controller, cob-twist-controller }:
buildRosPackage {
  pname = "ros-noetic-cob-control";
  version = "0.8.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_control/0.8.18-1.tar.gz";
    name = "0.8.18-1.tar.gz";
    sha256 = "d10c9de7c124617266c9de4b66fb2b6d66b7b40dc0bda18843e706e6e95c4beb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-base-controller-utils cob-base-velocity-smoother cob-cartesian-controller cob-collision-velocity-filter cob-control-mode-adapter cob-control-msgs cob-footprint-observer cob-frame-tracker cob-hardware-emulation cob-mecanum-controller cob-model-identifier cob-obstacle-distance cob-omni-drive-controller cob-trajectory-controller cob-tricycle-controller cob-twist-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_control meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
