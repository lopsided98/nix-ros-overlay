
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, maliput }:
buildRosPackage {
  pname = "ros-foxy-maliput-sparse";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_sparse-release/archive/release/foxy/maliput_sparse/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "a8fb0b085b83b4bed9f5b54661068537cb0115a73f8bbee29c7da740b8bd855b";
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
