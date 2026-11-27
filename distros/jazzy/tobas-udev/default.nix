
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, udev }:
buildRosPackage {
  pname = "ros-jazzy-tobas-udev";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_udev/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "e2d8729f324a1a879add8ed4a3c670e530a6ba834cce4a30a317f527a7dd3092";
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
