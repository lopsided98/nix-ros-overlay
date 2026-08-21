
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, boost, ceres-solver, diagnostic-updater, eigen, fuse-constraints, fuse-core, fuse-graphs, fuse-models, fuse-msgs, fuse-variables, geometry-msgs, gtest-vendor, launch, launch-pytest, launch-ros, nav-msgs, pluginlib, rclcpp, rclcpp-components, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-fuse-optimizers";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/kilted/fuse_optimizers/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "47a023a2018657811b12d4b5a455d01d5a7f0ef4adff404aa5b5e03687b139b3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common fuse-models geometry-msgs launch launch-pytest launch-ros nav-msgs rclcpp ];
  propagatedBuildInputs = [ ament-cmake-ros boost ceres-solver diagnostic-updater eigen fuse-constraints fuse-core fuse-graphs fuse-msgs fuse-variables gtest-vendor pluginlib rclcpp rclcpp-components std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The fuse_optimizers package provides a set of optimizer implementations. An optimizer is the object responsible \\
    for coordinating the sensors and motion model inputs, computing the optimal state values, and providing access to \\
    to the optimal state via the publishers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
