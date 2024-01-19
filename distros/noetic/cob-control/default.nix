
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-base-controller-utils, cob-base-velocity-smoother, cob-cartesian-controller, cob-collision-velocity-filter, cob-control-mode-adapter, cob-control-msgs, cob-footprint-observer, cob-frame-tracker, cob-hardware-emulation, cob-mecanum-controller, cob-model-identifier, cob-obstacle-distance, cob-omni-drive-controller, cob-trajectory-controller, cob-tricycle-controller, cob-twist-controller }:
buildRosPackage {
  pname = "ros-noetic-cob-control";
  version = "0.8.22-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_control/0.8.22-1.tar.gz";
    name = "0.8.22-1.tar.gz";
    sha256 = "bcfe8f90340456605bc1b71aea88a26faf0f677bef8624de3074cb566f8be946";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-base-controller-utils cob-base-velocity-smoother cob-cartesian-controller cob-collision-velocity-filter cob-control-mode-adapter cob-control-msgs cob-footprint-observer cob-frame-tracker cob-hardware-emulation cob-mecanum-controller cob-model-identifier cob-obstacle-distance cob-omni-drive-controller cob-trajectory-controller cob-tricycle-controller cob-twist-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_control meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
