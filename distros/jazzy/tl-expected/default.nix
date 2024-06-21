
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tl-expected";
  version = "1.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/jazzy/tl_expected/1.0.2-5.tar.gz";
    name = "1.0.2-5.tar.gz";
    sha256 = "a9a4975e21e493f3c778ed0b4d7a2d4fe0d52a1876a96d59d569d20669806b1b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++11/14/17 std::expected with functional-style extensions";
    license = with lib.licenses; [ "Creative-Commons-Zero-v1.0-Universal" ];
  };
}
