
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-iron-libcaer";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcaer-release/archive/release/iron/libcaer/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "51d2796ca9c6220dd1654ddf661421528833bfe0711f3803f8440b9e1212d0d9";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ libusb1 pkg-config ];

  meta = {
    description = ''library for event based sensors'';
    license = with lib.licenses; [ bsd2 ];
  };
}
