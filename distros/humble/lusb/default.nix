
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-humble-lusb";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/lusb-release/archive/release/humble/lusb/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "bd718f2cd39eb08357163b2b7e1d7f42bffee72a6e634123ea7858ab50925d09";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  propagatedBuildInputs = [ libusb1 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Library for interfacing to USB devices";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
