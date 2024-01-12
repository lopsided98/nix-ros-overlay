
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-humble-ecl-tools";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_tools-release/archive/release/humble/ecl_tools/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "4317fe28aadb65633b5898ac9719cfe7728de7568db8c83d2586d9a301c2d563";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ecl-build ecl-license ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Tools and utilities for ecl development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
