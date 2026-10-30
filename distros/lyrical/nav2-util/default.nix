
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-lint-auto, ament-lint-common, angles, backward-ros, geometry-msgs, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, nav2-ros-common, rcl-interfaces, rclcpp, rclcpp-lifecycle, tf2, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-nav2-util";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav2_util/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "c4a73fdd03e3265417d1ba700c6681e2c74d56b125126bd1b6649e6b9ca85bc8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-cmake-ros ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ angles backward-ros geometry-msgs lifecycle-msgs nav-msgs nav2-msgs nav2-ros-common rcl-interfaces rclcpp rclcpp-lifecycle tf2 tf2-geometry-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 utilities";
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
