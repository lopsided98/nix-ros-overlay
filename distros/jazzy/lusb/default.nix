
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-lusb";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/lusb-release/archive/release/jazzy/lusb/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "db1c9cc40f41bd67c3f4b6e2eadbdcaf0744a723adc7ea3be34c4fd61052da0d";
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
