
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tl-expected-nixpkgs }:
buildRosPackage {
  pname = "ros-rolling-tl-expected";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/rolling/tl_expected/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "384fbd356d27c21f6ef16d4e8a4101b98d621436a14a8292b2017c80c7984614";
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
