
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, lanelet2-core, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-lyrical-lanelet2-maps";
  version = "1.2.1-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/lyrical/lanelet2_maps/1.2.1-8.tar.gz";
    name = "1.2.1-8.tar.gz";
    sha256 = "c2b24cb81f0e4911a9d20a9c02581c92d8425472b179555c86b73634a59e2d77";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ lanelet2-core mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = "Example maps in the lanelet2-format";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
