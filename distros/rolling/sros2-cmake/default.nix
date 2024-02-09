
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-rolling-sros2-cmake";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/rolling/sros2_cmake/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "8ece57544a7a24df10e903865934e6f51ecc79c29e615f8a44303ae6ed48a4c6";
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
