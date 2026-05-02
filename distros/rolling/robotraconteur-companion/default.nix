
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, gtest, opencv, robotraconteur, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-robotraconteur-companion";
  version = "0.4.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur_companion-release/archive/release/rolling/robotraconteur_companion/0.4.2-3.tar.gz";
    name = "0.4.2-3.tar.gz";
    sha256 = "ce611624e2da4f472c8158b97377a1cb94842f01083a74416b09baecfaa82c41";
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
