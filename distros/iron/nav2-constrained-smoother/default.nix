
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, angles, ceres-solver, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-iron-nav2-constrained-smoother";
  version = "1.2.10-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_constrained_smoother/1.2.10-1.tar.gz";
    name = "1.2.10-1.tar.gz";
    sha256 = "46b7444d9d79f8fab6c9a450c643eed1c6e4c21a51924ff2cfe7c9809be42c7e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles ceres-solver nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Ceres constrained smoother";
    license = with lib.licenses; [ asl20 ];
  };
}
