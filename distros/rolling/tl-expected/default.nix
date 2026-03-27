
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tl-expected-nixpkgs }:
buildRosPackage {
  pname = "ros-rolling-tl-expected";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/rolling/tl_expected/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "a97f16079bc4ff7c910018efbc1368394242bae8bd4d6ca58b6a571541b01307";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tl-expected-nixpkgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++11/14/17 std::expected with functional-style extensions";
    license = with lib.licenses; [ "CC0-1.0" ];
  };
}
