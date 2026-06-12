
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-lyrical-lusb";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/lusb-release/archive/release/lyrical/lusb/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "9c024046fcfd24db585f6b0a1ed5978453bc1d619c594d6bc68278a128b69c67";
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
