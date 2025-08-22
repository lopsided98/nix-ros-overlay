
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-kilted-ecl-console";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/kilted/ecl_console/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "210ee7192fa02177a7ca330a0078a2e756242e2f8b61748337ed7925bfc6d630";
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
