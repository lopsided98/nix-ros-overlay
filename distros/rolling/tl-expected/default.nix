
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tl-expected-nixpkgs }:
buildRosPackage {
  pname = "ros-rolling-tl-expected";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/rolling/tl_expected/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "76c3e50605b1d1dd5e37144a02050337d299c0658b2c36e503fe792e0a8234ae";
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
