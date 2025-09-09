
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, generate-parameter-library, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, std-srvs, tf2, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-leo-filters";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/jazzy/leo_filters/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "60788243eeca573ba442df1f0326960e65b8b55bd7b44e0868a7b30931f5754a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ generate-parameter-library geometry-msgs nav-msgs rclcpp rclcpp-components sensor-msgs std-srvs tf2 tf2-ros yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nodes for filtering and processing imu and wheel odom messages.";
    license = with lib.licenses; [ mit ];
  };
}
