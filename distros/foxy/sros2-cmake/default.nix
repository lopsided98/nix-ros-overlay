
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-foxy-sros2-cmake";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/foxy/sros2_cmake/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "e4696c1064aab4a2c6c4d0941c623b2d54504f70ea69b173c5535d9a6532cee7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-test ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros2cli sros2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake macros to configure security'';
    license = with lib.licenses; [ asl20 ];
  };
}
