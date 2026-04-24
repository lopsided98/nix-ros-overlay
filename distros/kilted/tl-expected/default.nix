
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-tl-expected";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/kilted/tl_expected/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "337bedfe3d4b5630f4ad4c0faa093b17763f00149281d1c00d0e1641c9ec462c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++11/14/17 std::expected with functional-style extensions";
    license = with lib.licenses; [ "CC0-1.0" ];
  };
}
