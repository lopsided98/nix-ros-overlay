
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, gtest, opencv, robotraconteur, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-robotraconteur-companion";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur_companion-release/archive/release/humble/robotraconteur_companion/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "6665cd04c544561fb58ca8671c88f8c3e4c7a9e63d46845e59550c1677dfeecc";
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
