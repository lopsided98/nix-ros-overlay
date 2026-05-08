
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-tl-expected";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/kilted/tl_expected/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "7229b674ba5ad8defe79a5ddc8382db142ad12c90f0f2c88ebae1f3314bf77db";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++11/14/17 std::expected with functional-style extensions";
    license = with lib.licenses; [ "CC0-1.0" ];
  };
}
