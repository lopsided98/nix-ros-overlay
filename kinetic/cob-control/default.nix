
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-tricycle-controller, cob-twist-controller, cob-control-msgs, cob-base-controller-utils, cob-model-identifier, cob-cartesian-controller, catkin, cob-base-velocity-smoother, cob-footprint-observer, cob-collision-velocity-filter, cob-trajectory-controller, cob-omni-drive-controller, cob-control-mode-adapter, cob-frame-tracker, cob-obstacle-distance }:
buildRosPackage {
  pname = "ros-kinetic-cob-control";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_control-release/archive/release/kinetic/cob_control/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "55b5af9fb8f34dc1bc96f394e1336f9089a438d1e8b9a9e000b3c53675d9ae00";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-tricycle-controller cob-twist-controller cob-control-msgs cob-base-controller-utils cob-model-identifier cob-cartesian-controller cob-base-velocity-smoother cob-footprint-observer cob-collision-velocity-filter cob-trajectory-controller cob-omni-drive-controller cob-control-mode-adapter cob-frame-tracker cob-obstacle-distance ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_control meta-package'';
    license = with lib.licenses; [ asl20 ];
  };
}
