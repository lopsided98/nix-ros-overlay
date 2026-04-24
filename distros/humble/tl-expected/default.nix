
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-tl-expected";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/humble/tl_expected/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "b2b3bcfed611ed2e305979ad96fa23e4ba702fcd288968415fa4d8417230443e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++11/14/17 std::expected with functional-style extensions";
    license = with lib.licenses; [ "CC0-1.0" ];
  };
}
