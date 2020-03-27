
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-geometry, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-cob-scan-unifier";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_scan_unifier/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "0dc13eab97c35b0eb15851aa5054e007eb541e46e553730c7d3b211a4a41c724";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ laser-geometry roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_scan_unifier package holds code to unify two or more laser-scans to one unified scan-message'';
    license = with lib.licenses; [ asl20 ];
  };
}
