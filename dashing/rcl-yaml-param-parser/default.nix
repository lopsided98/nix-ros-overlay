
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libyaml, ament-lint-common, ament-cmake-gtest, ament-cmake-ros, rcl, ament-lint-auto, rcutils, libyaml-vendor }:
buildRosPackage rec {
  pname = "ros-dashing-rcl-yaml-param-parser";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl-release/archive/release/dashing/rcl_yaml_param_parser/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "bb632a819624f8b073a951d3416b792fd48c0ef45b1c81e86da9cd3c6b960220";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcl libyaml-vendor rcutils libyaml ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ libyaml-vendor libyaml ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Package containing various utility types and functions for C'';
    license = with lib.licenses; [ asl20 ];
  };
}
