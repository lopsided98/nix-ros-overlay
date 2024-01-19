
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-humble-libcaer";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcaer-release/archive/release/humble/libcaer/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "adc94042ca625cb49bc106b80f4fa99a012a1281df435b48cda0591047d746d8";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ libusb1 ];

  meta = {
    description = ''library for event based sensors'';
    license = with lib.licenses; [ bsd2 ];
  };
}
