
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcpputils, realtime-tools, ros2-control-test-assets, std-srvs, tf2, tf2-geometry-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-humble-steering-controllers-library";
  version = "2.23.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/steering_controllers_library/2.23.0-1.tar.gz";
    name = "2.23.0-1.tar.gz";
    sha256 = "5f6cf93e53322fa66db3299aaa4235cda0b4e8fcd31a4b8ac338101d32d8b664";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ ackermann-msgs backward-ros control-msgs controller-interface geometry-msgs hardware-interface nav-msgs pluginlib rclcpp rclcpp-lifecycle rcpputils realtime-tools std-srvs tf2 tf2-geometry-msgs tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package for steering robot configurations including odometry and interfaces.'';
    license = with lib.licenses; [ asl20 ];
  };
}
