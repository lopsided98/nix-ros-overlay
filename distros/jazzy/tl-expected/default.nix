
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tl-expected";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/cpp_polyfills-release/archive/release/jazzy/tl_expected/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "c2da2844af35ad1ea6020a3cb1437da48e8a0dbdbd78345242c4fb93a63a0172";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++11/14/17 std::expected with functional-style extensions";
    license = with lib.licenses; [ "CC0-1.0" ];
  };
}
