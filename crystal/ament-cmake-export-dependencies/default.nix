
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-libraries }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-export-dependencies";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/crystal/ament_cmake_export_dependencies/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "ba891a576fbe4430d9c2f82152e56a1fff88d72c8b3a6eebd9aea1f7e7e81b99";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-libraries ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export dependencies to downstream packages in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
