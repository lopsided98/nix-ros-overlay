
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-test";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_cmake-release/archive/release/crystal/ament_cmake_test/0.6.1-0.tar.gz;
    sha256 = "464c3a333ab241426588ec2fc30acacd88084bab1308abc6ffe9d75e04d0ef1d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
