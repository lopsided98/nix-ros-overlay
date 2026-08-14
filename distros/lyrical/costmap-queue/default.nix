
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, nav2-common, nav2-costmap-2d, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-costmap-queue";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/costmap_queue/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "af87cb4815729de18ef11da7c1ad02282dab58118d28279e239393aaa2e9ac61";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-ros ament-lint-auto ament-lint-common rclcpp ];
  propagatedBuildInputs = [ backward-ros nav2-costmap-2d ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The costmap_queue package";
    license = with lib.licenses; [ bsd3 ];
  };
}
