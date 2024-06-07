
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, tf2, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-iron-nav2-regulated-pure-pursuit-controller";
  version = "1.2.9-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_regulated_pure_pursuit_controller/1.2.9-1.tar.gz";
    name = "1.2.9-1.tar.gz";
    sha256 = "f8f7d4a2125d5fbf216baa073c3940b3f4844ca3b2ce369a54ec5310b3ff386a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp tf2 tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Regulated Pure Pursuit Controller";
    license = with lib.licenses; [ asl20 ];
  };
}
