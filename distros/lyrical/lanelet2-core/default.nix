
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, eigen, gtest, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-lyrical-lanelet2-core";
  version = "1.2.1-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/lyrical/lanelet2_core/1.2.1-8.tar.gz";
    name = "1.2.1-8.tar.gz";
    sha256 = "0d366d99e9c178a9a734b5d740440388c7efadbe6259becf06697736507665a7";
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
