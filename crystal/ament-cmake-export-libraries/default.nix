
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-export-libraries";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_cmake-release/archive/release/crystal/ament_cmake_export_libraries/0.6.1-0.tar.gz;
    sha256 = "33037387d8ac0af0329716607dde7ad1532d91cc3a585cff344470f1e033ec81";
  };

  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export libraries to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
