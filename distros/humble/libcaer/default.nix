
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-humble-libcaer";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcaer-release/archive/release/humble/libcaer/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "74b8e30cd58e38048158dc2db547969d21e4ed7524c73fe120d1ce9dde0f84cf";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ libusb1 ];

  meta = {
    description = ''library for event based sensors'';
    license = with lib.licenses; [ bsd2 ];
  };
}
