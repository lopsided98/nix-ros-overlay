
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, maliput }:
buildRosPackage {
  pname = "ros-foxy-maliput-sparse";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_sparse-release/archive/release/foxy/maliput_sparse/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "9a5a6b33c97e453da8701e0dbd3779fb7ae3317c35d00b89bafe3f084fbb791e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ];
  propagatedBuildInputs = [ maliput ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maliput sparse is a maliput backend built on top of waypoints without any analytical model of the surface'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
