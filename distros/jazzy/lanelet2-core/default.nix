
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, eigen, gtest, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-jazzy-lanelet2-core";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/jazzy/lanelet2_core/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "91eee3bc62f131ccc76fb9060762d5e4fda146e1f4da73ab04085fbaed7d4a77";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost eigen mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = "Lanelet2 core module";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
