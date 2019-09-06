
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-testing, nav2-msgs, ament-cmake-gtest, nav2-util, launch, tf2-ros, nav2-common, rclcpp, nav2-costmap-2d, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-nav2-world-model";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/nav2_world_model/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "2908d8d758949f0cdb89461784c1c1200526b184203620d82dd226a663580ac4";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-msgs nav2-util tf2-ros nav2-common rclcpp nav2-costmap-2d ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ nav2-msgs nav2-util tf2-ros rclcpp nav2-costmap-2d ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
