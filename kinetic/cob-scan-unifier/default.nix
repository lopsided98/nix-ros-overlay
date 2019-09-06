
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, laser-geometry, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-scan-unifier";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_scan_unifier/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "3f2501c2263f5b5b680474ecfe637c853617793613a2a20aad8330a1626a7893";
  };

  buildType = "catkin";
  buildInputs = [ laser-geometry tf sensor-msgs roscpp ];
  propagatedBuildInputs = [ tf sensor-msgs roscpp laser-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_scan_unifier package holds code to unify two or more laser-scans to one unified scan-message'';
    license = with lib.licenses; [ asl20 ];
  };
}
