
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, udev }:
buildRosPackage {
  pname = "ros-jazzy-tobas-udev";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_udev/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "8bab64e6227c1f8e28e7c2b3e8d93c94c7ab4d5102a492e026e5aedbf1b2b526";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  propagatedBuildInputs = [ udev ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "C++ utilities for enumerating and monitoring Linux udev devices.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
