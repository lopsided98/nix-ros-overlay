
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, boost, ceres-solver, eigen, fuse-constraints, fuse-core, fuse-graphs, fuse-msgs, fuse-publishers, fuse-variables, gbenchmark, geometry-msgs, nav-msgs, pluginlib, rclcpp, rclcpp-components, sensor-msgs, std-srvs, tf2, tf2-2d, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-fuse-models";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fuse-release/archive/release/jazzy/fuse_models/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "b4fecac3869daa3997bc87aee1a5c499d02eef95c677953fec9b6df20d31b2d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common gbenchmark ];
  propagatedBuildInputs = [ boost ceres-solver eigen fuse-constraints fuse-core fuse-graphs fuse-msgs fuse-publishers fuse-variables geometry-msgs nav-msgs pluginlib rclcpp rclcpp-components sensor-msgs std-srvs tf2 tf2-2d tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "fuse plugins that implement various kinematic and sensor models";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
