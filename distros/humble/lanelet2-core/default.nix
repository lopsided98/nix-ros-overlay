
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, eigen, gtest, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-humble-lanelet2-core";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/humble/lanelet2_core/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "0b38e261c93f027a6e02456895ac10a49bb9495cd6af4342f163bbc2289c4dfd";
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
