
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, geometry-msgs, nav2-common, nav2-costmap-2d, nav2-util, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-nav2-collision-monitor";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_collision_monitor/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "3548346facef75358c1785f603a70bd4945366a72a5139ee42173391882ffe06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav2-common nav2-costmap-2d nav2-util rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Collision Monitor'';
    license = with lib.licenses; [ asl20 ];
  };
}
