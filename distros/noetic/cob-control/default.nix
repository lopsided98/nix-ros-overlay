
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-base-controller-utils, cob-base-velocity-smoother, cob-cartesian-controller, cob-collision-velocity-filter, cob-control-mode-adapter, cob-control-msgs, cob-footprint-observer, cob-frame-tracker, cob-hardware-emulation, cob-mecanum-controller, cob-model-identifier, cob-obstacle-distance, cob-omni-drive-controller, cob-trajectory-controller, cob-tricycle-controller, cob-twist-controller }:
buildRosPackage {
  pname = "ros-noetic-cob-control";
  version = "0.8.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/noetic/cob_control/0.8.20-1.tar.gz";
    name = "0.8.20-1.tar.gz";
    sha256 = "731f03bceaeec67b413c473f2452e93330059e24093a1810d00026f519aa8068";
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
