
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gen-version-h, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, libyaml, libyaml-vendor, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture, rcutils, rmw }:
buildRosPackage {
  pname = "ros-lyrical-rcl-yaml-param-parser";
  version = "10.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/lyrical/rcl_yaml_param_parser/10.4.5-1.tar.gz";
    name = "10.4.5-1.tar.gz";
    sha256 = "431681286df5ff95f65c80457918a4576d6f6e7a24dd9fee2e77d6427343670b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common mimick-vendor osrf-testing-tools-cpp performance-test-fixture ];
  propagatedBuildInputs = [ libyaml libyaml-vendor rcutils rmw ];
  nativeBuildInputs = [ ament-cmake-gen-version-h ament-cmake-ros ];

  meta = {
    description = "Parse a YAML parameter file and populate the C data structure.";
    license = with lib.licenses; [ asl20 ];
  };
}
