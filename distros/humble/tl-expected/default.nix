
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-tl-expected";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/humble/tl_expected/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "f4dc048e00ec2e52ee7dbc0b4827152d8e31d0bf9d6d8fabbec6d9f0ba63dc8d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++11/14/17 std::expected with functional-style extensions";
    license = with lib.licenses; [ "CC0-1.0" ];
  };
}
