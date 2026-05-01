
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, generate-parameter-library, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, std-srvs, tf2, tf2-ros, yaml-cpp }:
buildRosPackage {
  pname = "ros-lyrical-leo-filters";
  version = "2.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/lyrical/leo_filters/2.5.0-3.tar.gz";
    name = "2.5.0-3.tar.gz";
    sha256 = "ceeb38eca96db65611b4716662ed819c910c2b55f0752a9689db065c1bbc228f";
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
