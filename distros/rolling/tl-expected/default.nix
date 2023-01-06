
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-tl-expected";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/cpp_polyfills-release/archive/release/rolling/tl_expected/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "56ee09a50d15df38d60afd8a432504d32a7d7953d0322721bac3a70e1e84354b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++11/14/17 std::expected with functional-style extensions'';
    license = with lib.licenses; [ "Creative-Commons-Zero-v1.0-Universal" ];
  };
}
