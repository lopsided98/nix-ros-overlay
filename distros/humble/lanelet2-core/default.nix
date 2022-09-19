
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, eigen, gtest, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-humble-lanelet2-core";
  version = "1.1.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/humble/lanelet2_core/1.1.1-4.tar.gz";
    name = "1.1.1-4.tar.gz";
    sha256 = "48c33d8e8a36faa4a55d71621db961f2a33d11162845625bd15f22dbae8f889e";
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
