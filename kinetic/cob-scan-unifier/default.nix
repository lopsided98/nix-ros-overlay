
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, laser-geometry, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-scan-unifier";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_scan_unifier/0.6.14-1.tar.gz;
    sha256 = "cbdc24a01b5bc9d83f9af88d449de3486bc7b77d47a4a2857224633cc974de10";
  };

  buildInputs = [ laser-geometry tf sensor-msgs roscpp ];
  propagatedBuildInputs = [ laser-geometry tf sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_scan_unifier package holds code to unify two or more laser-scans to one unified scan-message'';
    license = with lib.licenses; [ asl20 ];
  };
}
