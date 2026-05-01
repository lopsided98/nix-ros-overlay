
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, boost, ceres-solver, diagnostic-updater, eigen, fuse-constraints, fuse-core, fuse-graphs, fuse-models, fuse-msgs, fuse-variables, geometry-msgs, gtest-vendor, launch, launch-pytest, launch-ros, nav-msgs, pluginlib, rclcpp, rclcpp-components, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-fuse-optimizers";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/lyrical/fuse_optimizers/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "b313536a43331f781dcbb84d683944dc396f9183f66e72b8208706b4c8be9404";
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
