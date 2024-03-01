
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-ulc-can, dataspeed-ulc-msgs }:
buildRosPackage {
  pname = "ros-humble-dataspeed-ulc";
  version = "2.1.10-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dataspeed_ulc/2.1.10-1.tar.gz";
    name = "2.1.10-1.tar.gz";
    sha256 = "a6afdde59a7e17f14bd6180ebe18c3415348b6feb5477b27c6b63b1f1263c3d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dataspeed-ulc-can dataspeed-ulc-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CAN interface to the Universal Lat/Lon Controller (ULC) firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
