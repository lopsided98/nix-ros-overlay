
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-tl-expected";
  version = "1.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/rolling/tl_expected/1.0.2-3.tar.gz";
    name = "1.0.2-3.tar.gz";
    sha256 = "cdb0892a30ae295ac202f024778ebe2b20d1beaa77ee456d70cf8e86cdf6edbd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''C++11/14/17 std::expected with functional-style extensions'';
    license = with lib.licenses; [ "Creative-Commons-Zero-v1.0-Universal" ];
  };
}
