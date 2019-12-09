
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, ament-lint-common, libyaml, libyaml-vendor, ament-cmake-gtest, osrf-testing-tools-cpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rcl-yaml-param-parser";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/eloquent/rcl_yaml_param_parser/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "3e8ada793c0c5728c097cceee95c98881b62d03c34a5446d2fd1d9bfbe33cdab";
  };

  buildType = "ament_cmake";
  buildInputs = [ libyaml-vendor rcutils libyaml ];
  checkInputs = [ ament-lint-auto osrf-testing-tools-cpp ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ libyaml-vendor libyaml ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing various utility types and functions for C'';
    license = with lib.licenses; [ asl20 ];
  };
}
