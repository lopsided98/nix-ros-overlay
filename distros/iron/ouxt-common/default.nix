
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-iron-ouxt-common";
  version = "0.0.8-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouxt_common-release/archive/release/iron/ouxt_common/0.0.8-4.tar.gz";
    name = "0.0.8-4.tar.gz";
    sha256 = "d8d7c6e510860bd1ca6493dda29d906f209496dca2512060e2d12c0be1feb4ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ouxt-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''common settings for OUXT Polaris ROS2 packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
