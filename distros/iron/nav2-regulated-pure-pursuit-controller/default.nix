
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-iron-nav2-regulated-pure-pursuit-controller";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_regulated_pure_pursuit_controller/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "c5293d7b6594900c2361a6a4eda3fe851123ad1caeb168fbf2179d05a1673406";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Regulated Pure Pursuit Controller'';
    license = with lib.licenses; [ asl20 ];
  };
}
