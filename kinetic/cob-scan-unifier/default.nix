
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roscpp, laser-geometry, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-scan-unifier";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_scan_unifier/0.6.13-0.tar.gz;
    sha256 = "8b8e945323dae33489bcb1163238a2a9791f34cbf3aa07b93920970a8b1194d6";
  };

  buildInputs = [ laser-geometry tf sensor-msgs roscpp ];
  propagatedBuildInputs = [ laser-geometry tf sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_scan_unifier package holds code to unify two or more laser-scans to one unified scan-message'';
    license = with lib.licenses; [ asl20 ];
  };
}
