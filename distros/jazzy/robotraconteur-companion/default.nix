
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, gtest, opencv, robotraconteur, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-robotraconteur-companion";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robotraconteur_companion-release/archive/release/jazzy/robotraconteur_companion/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "5661bd057042a25c0f7fa8225b7e7034e871140e6ce29f5f7959544fb5c282fb";
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
