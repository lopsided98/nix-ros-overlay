
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-geometry, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-scan-unifier";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_scan_unifier/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "73e83451b4cb4bbc157f6c09569977117d83d5dca60359174211fd4772456d2f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ laser-geometry roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_scan_unifier package holds code to unify two or more laser-scans to one unified scan-message'';
    license = with lib.licenses; [ asl20 ];
  };
}
