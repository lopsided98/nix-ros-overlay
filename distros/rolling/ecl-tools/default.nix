
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-rolling-ecl-tools";
  version = "1.0.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/rolling/ecl_tools/1.0.3-5.tar.gz";
    name = "1.0.3-5.tar.gz";
    sha256 = "91059396336d48a7a036ca76ddd1eb02b56dc0f60ce7ec67f34ca16937951088";
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
