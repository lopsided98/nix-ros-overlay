
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-common, nav2-core, nav2-costmap-2d, nav2-msgs, nav2-util, pluginlib, rclcpp, tf2 }:
buildRosPackage {
  pname = "ros-galactic-nav2-regulated-pure-pursuit-controller";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_regulated_pure_pursuit_controller/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "b5c481965ed0966829edd2c1294e5487ae3b67bd7da88afdc38f4e789e461a27";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav2-common nav2-core nav2-costmap-2d nav2-msgs nav2-util pluginlib rclcpp tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Regulated Pure Pursuit Controller'';
    license = with lib.licenses; [ asl20 ];
  };
}
