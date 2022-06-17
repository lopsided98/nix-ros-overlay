
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, fmt, maliput, maliput-drake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-foxy-maliput-malidrive";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_malidrive-release/archive/release/foxy/maliput_malidrive/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "f643c9761b5333d6cc0856263e49ef2931b4820f5b141f800639a2d800276971";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest ];
  propagatedBuildInputs = [ fmt maliput maliput-drake tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''maliput_malidrive backend'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
