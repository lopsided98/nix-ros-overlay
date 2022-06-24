
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, fmt, gflags, libyamlcpp, maliput }:
buildRosPackage {
  pname = "ros-foxy-maliput-object";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_object-release/archive/release/foxy/maliput_object/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "d487931ef4294cd8b3bff7dfdc18e3dccb67e71ab5894a1d3b35818c05f2cb48";
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
