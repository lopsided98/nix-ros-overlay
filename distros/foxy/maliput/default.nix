
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, fmt, gflags, libyamlcpp }:
buildRosPackage {
  pname = "ros-foxy-maliput";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput-release/archive/release/foxy/maliput/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "60155e117fc30398fb885c5c436d7c680317b09e014b46074fe8cf8b5a5042cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ fmt gflags libyamlcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
