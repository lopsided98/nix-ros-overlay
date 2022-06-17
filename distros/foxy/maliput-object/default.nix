
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, fmt, gflags, libyamlcpp, maliput }:
buildRosPackage {
  pname = "ros-foxy-maliput-object";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_object-release/archive/release/foxy/maliput_object/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "8f4fd69d2d26d24259b724032fbc85a826fe2475722bbffe390a4ae110bd71b8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ fmt gflags libyamlcpp maliput ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput Object'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
