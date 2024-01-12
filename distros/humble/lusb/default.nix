
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-humble-lusb";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/lusb-release/archive/release/humble/lusb/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "df060eb9a667ff2162d9a3baf1d8f4311540d7b8d121f56ebb74e392a1a11638";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  propagatedBuildInputs = [ libusb1 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Library for interfacing to USB devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
