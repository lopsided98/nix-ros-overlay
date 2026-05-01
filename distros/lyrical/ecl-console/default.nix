
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-lyrical-ecl-console";
  version = "1.2.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_lite-release/archive/release/lyrical/ecl_console/1.2.0-6.tar.gz";
    name = "1.2.0-6.tar.gz";
    sha256 = "29afbb621c9e4de275d1e7e4c6b586508647a0457e18ebf5ad06afeb118146c8";
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
