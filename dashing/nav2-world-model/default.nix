
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, launch, launch-testing, nav2-costmap-2d, ament-lint-common, ament-cmake, ament-cmake-gtest, nav2-common, ament-cmake-pytest, nav2-util, rclcpp, nav2-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-nav2-world-model";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_world_model/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "721211ea22726cf40325430e33b586a9fcdb71ed23fd4c6e3809a5436ccf885a";
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
