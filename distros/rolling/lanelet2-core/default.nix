
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, eigen, gtest, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-rolling-lanelet2-core";
  version = "1.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/rolling/lanelet2_core/1.1.1-3.tar.gz";
    name = "1.1.1-3.tar.gz";
    sha256 = "351c016670d0bf311bc85e436f5705e6fc747c4985023d82dac8b9943f8ab7b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost eigen mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Lanelet2 core module'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
