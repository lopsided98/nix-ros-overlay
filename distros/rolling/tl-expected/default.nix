
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tl-expected-nixpkgs }:
buildRosPackage {
  pname = "ros-rolling-tl-expected";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/rolling/tl_expected/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "14c943f3f25ebbd8351b9a7be49991c72eacad027047b7cefcc24de046b67f95";
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
