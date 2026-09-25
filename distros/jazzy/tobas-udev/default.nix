
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, udev }:
buildRosPackage {
  pname = "ros-jazzy-tobas-udev";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_udev/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "b167259e4782bea9bfd7bf32fa86c27460ba92ea2b1eb63b171d9f282581c207";
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
