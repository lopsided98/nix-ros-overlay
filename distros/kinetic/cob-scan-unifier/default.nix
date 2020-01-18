
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-geometry, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-scan-unifier";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_scan_unifier/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "70f6c34499e39b9eb0fc2e8904bdd0cc69f7d13e20c59d93a6f41e8f97e1bbe0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ laser-geometry roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_scan_unifier package holds code to unify two or more laser-scans to one unified scan-message'';
    license = with lib.licenses; [ asl20 ];
  };
}
