
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, backward-ros, nav2-common, nav2-costmap-2d, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-costmap-queue";
  version = "1.5.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/costmap_queue/1.5.2-2.tar.gz";
    name = "1.5.2-2.tar.gz";
    sha256 = "954510d01b5231598fc2f3acf6b9926ecbcfdb729f2df2f261f305010435be9e";
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
