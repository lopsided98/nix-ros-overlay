
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-rolling-libcaer";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcaer-release/archive/release/rolling/libcaer/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "953dad49b6a306a2367fe97e78f7814b1549ea5cca8bf1d7515a8d6ff5b606c6";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ libusb1 pkg-config ];

  meta = {
    description = ''library for event based sensors'';
    license = with lib.licenses; [ bsd2 ];
  };
}
