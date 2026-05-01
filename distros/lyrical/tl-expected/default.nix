
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tl-expected-nixpkgs }:
buildRosPackage {
  pname = "ros-lyrical-tl-expected";
  version = "2.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/lyrical/tl_expected/2.0.2-3.tar.gz";
    name = "2.0.2-3.tar.gz";
    sha256 = "a4abd1ddaab799e68d3551fdcf3280bf705cd6c16dfd1f654885cf8f5cd90d26";
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
