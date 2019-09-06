
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, laser-geometry, tf }:
buildRosPackage {
  pname = "ros-melodic-cob-scan-unifier";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_scan_unifier/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "94196bb5a8e6ee59ba454fdd2a36b3067a3ff211b7f488f23ff885e252d0fa2f";
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
