
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, generate-parameter-library, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, std-srvs, tf2, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-leo-filters";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/jazzy/leo_filters/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "1e3e01d2fde6ce49c29bf781a08a6ce1c01dd284cd95bcefc04ccce7b342c2e8";
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
