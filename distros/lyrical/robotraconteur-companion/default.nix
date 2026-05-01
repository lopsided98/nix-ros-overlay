
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, gtest, opencv, robotraconteur, yaml-cpp }:
buildRosPackage {
  pname = "ros-lyrical-robotraconteur-companion";
  version = "0.4.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur_companion-release/archive/release/lyrical/robotraconteur_companion/0.4.2-4.tar.gz";
    name = "0.4.2-4.tar.gz";
    sha256 = "b6bc2913f356c47bf6598e9fa268a4ab7d0b402575ac5abccb447710475d62b9";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen robotraconteur ];
  checkInputs = [ gtest opencv opencv.cxxdev ];
  propagatedBuildInputs = [ boost yaml-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Robot Raconteur Companion library for C++";
    license = with lib.licenses; [ asl20 ];
  };
}
