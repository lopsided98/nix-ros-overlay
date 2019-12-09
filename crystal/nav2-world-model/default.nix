
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, launch, launch-testing, nav2-costmap-2d, ament-lint-common, ament-cmake, ament-cmake-gtest, nav2-common, ament-cmake-pytest, nav2-util, rclcpp, nav2-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-world-model";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_world_model/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "2908d8d758949f0cdb89461784c1c1200526b184203620d82dd226a663580ac4";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-costmap-2d nav2-common nav2-util rclcpp nav2-msgs tf2-ros ];
  checkInputs = [ launch launch-testing ament-lint-common ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ nav2-costmap-2d nav2-util rclcpp nav2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
