
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, angles, ceres-solver, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-humble-nav2-constrained-smoother";
  version = "1.1.12-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_constrained_smoother/1.1.12-1.tar.gz";
    name = "1.1.12-1.tar.gz";
    sha256 = "e88e6c4e54a629a996a18d732bab28d7c0f63a17c7d41e8d3f77c5dbc6d6cd47";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles ceres-solver nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Ceres constrained smoother'';
    license = with lib.licenses; [ asl20 ];
  };
}
