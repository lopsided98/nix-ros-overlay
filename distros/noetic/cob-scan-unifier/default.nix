
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-geometry, roscpp, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-scan-unifier";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_scan_unifier/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "cefc67a347d6a5299f4d67e9d30dc2f918c520caf97a20ed03b7688fb0aa7c1b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ laser-geometry roscpp sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cob_scan_unifier package holds code to unify two or more laser-scans to one unified scan-message";
    license = with lib.licenses; [ asl20 ];
  };
}
