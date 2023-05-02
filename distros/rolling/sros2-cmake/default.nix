
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-rolling-sros2-cmake";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/rolling/sros2_cmake/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "c09274de3824ae2fa7690907438743dd4fb2e218bddfc76bf8c1fbb233065076";
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
