
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-tl-expected";
  version = "1.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/rolling/tl_expected/1.0.2-4.tar.gz";
    name = "1.0.2-4.tar.gz";
    sha256 = "302dc0a889107bc7d76f1fa05ee00055d670151a5cf85ab1572ac5acce13917e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++11/14/17 std::expected with functional-style extensions";
    license = with lib.licenses; [ "Creative-Commons-Zero-v1.0-Universal" ];
  };
}
