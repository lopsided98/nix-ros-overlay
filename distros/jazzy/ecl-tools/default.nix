
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-jazzy-ecl-tools";
  version = "1.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/jazzy/ecl_tools/1.0.3-5.tar.gz";
    name = "1.0.3-5.tar.gz";
    sha256 = "bf0dc23de609f13e021f476c0c94973d2dde011cb08d2a52927b8dc13c91e6f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ecl-build ecl-license ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tools and utilities for ecl development.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
