
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcpputils, realtime-tools, ros2-control-test-assets, std-srvs, tf2, tf2-geometry-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-rolling-steering-controllers-library";
  version = "4.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/steering_controllers_library/4.20.0-1.tar.gz";
    name = "4.20.0-1.tar.gz";
    sha256 = "aac000d7d6dfd97ed0c766ffae0884fb3a2ed8c9a93d1cd1d65cca9a64dc9f5b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ ackermann-msgs backward-ros control-msgs controller-interface generate-parameter-library geometry-msgs hardware-interface nav-msgs pluginlib rclcpp rclcpp-lifecycle rcpputils realtime-tools std-srvs tf2 tf2-geometry-msgs tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package for steering robot configurations including odometry and interfaces.";
    license = with lib.licenses; [ asl20 ];
  };
}
