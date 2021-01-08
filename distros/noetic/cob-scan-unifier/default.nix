
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-geometry, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-scan-unifier";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_scan_unifier/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "631a7edc5f7f817447b35e56dc42978e4ec1afa204a02d3467fddb5c365ecb25";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ laser-geometry roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_scan_unifier package holds code to unify two or more laser-scans to one unified scan-message'';
    license = with lib.licenses; [ asl20 ];
  };
}
