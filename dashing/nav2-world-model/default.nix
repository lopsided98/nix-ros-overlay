
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, ament-lint-common, launch-testing, nav2-msgs, ament-cmake-gtest, nav2-util, launch, tf2-ros, nav2-common, rclcpp, nav2-costmap-2d, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-world-model";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_world_model/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "721211ea22726cf40325430e33b586a9fcdb71ed23fd4c6e3809a5436ccf885a";
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
