
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, fmt, gflags, libyamlcpp }:
buildRosPackage {
  pname = "ros-foxy-maliput";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput-release/archive/release/foxy/maliput/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "fbb5918c21d8a93b9cca9e5a74e929c10bc8d9d0cb762e47585eb3f60b4ac316";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ fmt gflags libyamlcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
