
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, launch-testing, rcl, ament-lint-common, libyaml, libyaml-vendor, ament-cmake-gtest, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rcl-yaml-param-parser";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/crystal/rcl_yaml_param_parser/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "36a57efcbf15db7c2e71af5c82d59017c74b4b80c3ed9a90be023b47fd8efd1b";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcl libyaml-vendor rcutils libyaml ];
  checkInputs = [ launch-testing ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ libyaml-vendor libyaml ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing various utility types and functions for C'';
    license = with lib.licenses; [ asl20 ];
  };
}
