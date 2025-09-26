
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, nav2-common, nav2-costmap-2d, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-costmap-queue";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/costmap_queue/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "a8516a51e47bc6cdc68cff741d266c9fac9bd9c3e0e289495c8e557dff4c8c44";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp ];
  propagatedBuildInputs = [ nav2-costmap-2d ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The costmap_queue package";
    license = with lib.licenses; [ bsd3 ];
  };
}
