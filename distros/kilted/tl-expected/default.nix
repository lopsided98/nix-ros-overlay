
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-tl-expected";
  version = "1.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/kilted/tl_expected/1.0.2-5.tar.gz";
    name = "1.0.2-5.tar.gz";
    sha256 = "f8e4a31c05c1f5c075d780d6a19c058aebdfe81a1e1f9726be3d63091cbcfcfa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++11/14/17 std::expected with functional-style extensions";
    license = with lib.licenses; [ "Creative-Commons-Zero-v1.0-Universal" ];
  };
}
