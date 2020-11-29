
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-eloquent-cyclonedds-cmake-module";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_cyclonedds-release/archive/release/eloquent/cyclonedds_cmake_module/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "dc4d7ab18637edfc0589913bb07a38d40577d70624f47058baa0f28c89692f26";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provide CMake module to find Eclipse CycloneDDS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
