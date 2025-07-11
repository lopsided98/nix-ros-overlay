
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-ros, ament-lint-auto, ament-lint-common, control-msgs, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, hardware-interface-testing, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, rcpputils, realtime-tools, ros2-control-test-assets, sensor-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ffw-swerve-drive-controller";
  version = "1.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_swerve_drive_controller/1.1.7-1.tar.gz";
    name = "1.1.7-1.tar.gz";
    sha256 = "1042da2caa4e9db628b6aaaeaa5adc022cb16de0d03b93b3d6d277b3e6653c73";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros generate-parameter-library ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs controller-interface geometry-msgs hardware-interface nav-msgs pluginlib rclcpp rclcpp-lifecycle rcpputils realtime-tools sensor-msgs std-srvs tf2 tf2-geometry-msgs tf2-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "AI Worker's swerve drive ros2_controller";
    license = with lib.licenses; [ asl20 ];
  };
}
