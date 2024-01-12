
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-iron-sros2-cmake";
  version = "0.11.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/iron/sros2_cmake/0.11.3-1.tar.gz";
    name = "0.11.3-1.tar.gz";
    sha256 = "4d62cb907503251681d5e2487406017273a0224629bbe423ebcbce5dfb0c5728";
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
