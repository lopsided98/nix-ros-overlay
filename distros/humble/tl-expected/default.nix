
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-tl-expected";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/PickNikRobotics/cpp_polyfills-release/archive/release/humble/tl_expected/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "a91736a33d39434669423d8d45fb7e55d4ee2acfbc88fd5e1600cf5eea08eac3";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++11/14/17 std::expected with functional-style extensions'';
    license = with lib.licenses; [ "Creative-Commons-Zero-v1.0-Universal" ];
  };
}
