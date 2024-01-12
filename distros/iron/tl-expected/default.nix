
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-tl-expected";
  version = "1.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/iron/tl_expected/1.0.2-4.tar.gz";
    name = "1.0.2-4.tar.gz";
    sha256 = "0f492e5add3fe69e35fbf5965f582039fe6cf35ecdaf83a8debbad78616fe372";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++11/14/17 std::expected with functional-style extensions'';
    license = with lib.licenses; [ "Creative-Commons-Zero-v1.0-Universal" ];
  };
}
