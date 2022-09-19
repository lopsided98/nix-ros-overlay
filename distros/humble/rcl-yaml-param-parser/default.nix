
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture, rcpputils, rcutils, rmw }:
buildRosPackage {
  pname = "ros-humble-rcl-yaml-param-parser";
  version = "5.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/humble/rcl_yaml_param_parser/5.3.2-1.tar.gz";
    name = "5.3.2-1.tar.gz";
    sha256 = "315e39ba847d1af9ae7b3a2331a128fc69dea09a095c8bbad39f1c02640d0701";
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
