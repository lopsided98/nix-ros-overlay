
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-humble-ecl-console";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/humble/ecl_console/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "505343236394279dba2702cbafd8ee9126bae5fa34cf81e836bd3f153d0a692c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Color codes for ansii consoles.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
