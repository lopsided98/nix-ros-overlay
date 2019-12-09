
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, tf, laser-geometry, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cob-scan-unifier";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_scan_unifier/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "477f18ad9acf1597dcb1bcf087decdc9e932611a3b8a1fa3bb027971e7f01560";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs tf laser-geometry roscpp ];
  propagatedBuildInputs = [ sensor-msgs tf laser-geometry roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_scan_unifier package holds code to unify two or more laser-scans to one unified scan-message'';
    license = with lib.licenses; [ asl20 ];
  };
}
