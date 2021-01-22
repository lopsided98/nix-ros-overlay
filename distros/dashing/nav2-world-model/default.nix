
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, launch, launch-testing, nav2-common, nav2-costmap-2d, nav2-msgs, nav2-util, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-dashing-nav2-world-model";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/nav2_world_model/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "721211ea22726cf40325430e33b586a9fcdb71ed23fd4c6e3809a5436ccf885a";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ nav2-costmap-2d nav2-msgs nav2-util rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 ];
  };
}
