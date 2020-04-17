
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-eloquent-cyclonedds-cmake-module";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/eloquent/cyclonedds_cmake_module/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "6db8546cb9579bdf6d29f02e8e172a371b695a50f73d94eb50ab8ea31300be65";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module to find Eclipse CycloneDDS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
