
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, boost, ceres-solver, eigen, fuse-constraints, fuse-core, fuse-graphs, fuse-msgs, fuse-publishers, fuse-variables, gbenchmark, geometry-msgs, gtest-vendor, nav-msgs, pluginlib, rclcpp, rclcpp-components, sensor-msgs, std-srvs, tf2, tf2-2d, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-fuse-models";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/rolling/fuse_models/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "ac82742c3f3e41642ce341ffb8aa79ccee1947041d272041e836bcc19fe6b6e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common gbenchmark ];
  propagatedBuildInputs = [ ament-cmake-ros boost ceres-solver eigen fuse-constraints fuse-core fuse-graphs fuse-msgs fuse-publishers fuse-variables geometry-msgs gtest-vendor nav-msgs pluginlib rclcpp rclcpp-components sensor-msgs std-srvs tf2 tf2-2d tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "fuse plugins that implement various kinematic and sensor models";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
