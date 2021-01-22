
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-foxy-sros2-cmake";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/foxy/sros2_cmake/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "438eda96901566a1a9cdb98acb7405951aa00685792c0c820e7ca0fd0c4cc6c6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-test ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros2cli sros2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake macros to configure security'';
    license = with lib.licenses; [ asl20 ];
  };
}
