
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-lyrical-ecl-tools";
  version = "1.0.3-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/lyrical/ecl_tools/1.0.3-6.tar.gz";
    name = "1.0.3-6.tar.gz";
    sha256 = "8e26ec648e2f0385b590cc887f9e4edfea8110573accbbc67de41949a0a2e488";
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
