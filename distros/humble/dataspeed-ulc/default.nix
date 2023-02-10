
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dataspeed-ulc-can, dataspeed-ulc-msgs }:
buildRosPackage {
  pname = "ros-humble-dataspeed-ulc";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dataspeed_ulc/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "14eb7e0d0054222f4efc820b73eafd0182bbe943934e4ed7fa207650cde5cb47";
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
