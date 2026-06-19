
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-lusb";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/lusb-release/archive/release/jazzy/lusb/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "3b1ec79363c488459f6aa2973d94a8d9d729f3dbd7f1af8894bb784dc0715af7";
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
