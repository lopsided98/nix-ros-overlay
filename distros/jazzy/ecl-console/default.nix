
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-jazzy-ecl-console";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/jazzy/ecl_console/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "045cd0a32d0da1c64ee6338545826cd95e7103134116b450b61f8c1859521342";
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
