
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-libcaer";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcaer-release/archive/release/rolling/libcaer/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "b0e7b0a6dbdb0c5c3877cf2f7cc0487be6177aa8cbbf33383bf126c0d978f768";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ libusb1 ];

  meta = {
    description = ''library for event based sensors'';
    license = with lib.licenses; [ bsd2 ];
  };
}
