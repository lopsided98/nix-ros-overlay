
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-dashing-sros2-cmake";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/dashing/sros2_cmake/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "c64b7935e139fe0602e4155fd8dbf005afb97726ec8d946041accc9a10350571";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-test ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros2cli sros2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake macros to configure security for nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
