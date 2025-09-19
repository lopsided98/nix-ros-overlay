
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, generate-parameter-library, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, std-srvs, tf2, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-leo-filters";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/humble/leo_filters/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "668b9b546e6c1550c6c65b3b62933be284e3988c0417894c4e98dd64366b12a7";
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
