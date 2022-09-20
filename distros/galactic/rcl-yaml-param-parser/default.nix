
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture, rcpputils, rcutils, rmw }:
buildRosPackage {
  pname = "ros-galactic-rcl-yaml-param-parser";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/galactic/rcl_yaml_param_parser/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "81014877868e1e097118fc76e6f9c3beb2c6910bb5ec95c82ad8ec26d106ba29";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rcutils ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor osrf-testing-tools-cpp performance-test-fixture rcpputils ];
  propagatedBuildInputs = [ libyaml libyaml-vendor rmw ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Parse a YAML parameter file and populate the C data structure.'';
    license = with lib.licenses; [ asl20 ];
  };
}
