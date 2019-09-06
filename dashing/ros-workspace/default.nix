
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-package, cmake, ament-cmake-core }:
buildRosPackage rec {
  pname = "ros-dashing-ros-workspace";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_workspace-release/archive/release/dashing/ros_workspace/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "e278fd04588b7b764a1ecf8889b99930a91ba2a1d66396ce391c92ca0d253d84";
  };

  buildType = "cmake";
  buildInputs = [ ament-package ament-cmake-core ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Provides the prefix level environment files for ROS 2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
