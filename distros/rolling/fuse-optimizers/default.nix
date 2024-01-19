
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, boost, ceres-solver, diagnostic-updater, eigen, fuse-constraints, fuse-core, fuse-graphs, fuse-models, fuse-msgs, fuse-variables, geometry-msgs, launch, launch-pytest, launch-ros, nav-msgs, pluginlib, rclcpp, rclcpp-components, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-fuse-optimizers";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_optimizers/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "380fa66fcadb0f6a750b7de1f8853609f799d6dffb3278be2581850426c06743";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common fuse-models geometry-msgs launch launch-pytest launch-ros nav-msgs rclcpp ];
  propagatedBuildInputs = [ boost ceres-solver diagnostic-updater eigen fuse-constraints fuse-core fuse-graphs fuse-msgs fuse-variables pluginlib rclcpp rclcpp-components std-srvs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The fuse_optimizers package provides a set of optimizer implementations. An optimizer is the object responsible \
    for coordinating the sensors and motion model inputs, computing the optimal state values, and providing access to \
    to the optimal state via the publishers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
