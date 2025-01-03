
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-ulc-can, dataspeed-ulc-msgs }:
buildRosPackage {
  pname = "ros-humble-dataspeed-ulc";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dataspeed_ulc/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "c04b62e7956a86f53f222fcdead7a4c22a783f0fea800dffaf19590c926b349a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dataspeed-ulc-can dataspeed-ulc-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CAN interface to the Universal Lat/Lon Controller (ULC) firmware";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
