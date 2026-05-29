
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, gtest, opencv, robotraconteur, yaml-cpp }:
buildRosPackage {
  pname = "ros-lyrical-robotraconteur-companion";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur_companion-release/archive/release/lyrical/robotraconteur_companion/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "2c3e46154cb624071b441e732fa7a5c82180273d9eec9e3c3101352e145f01e8";
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
