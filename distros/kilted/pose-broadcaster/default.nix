
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface-testing, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, tf2-msgs }:
buildRosPackage {
  pname = "ros-kilted-pose-broadcaster";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/kilted/pose_broadcaster/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "81b3f1f17661bc16bc78875fb1a0dce74ecbcabc4691899ec9ce82cae0bb6515";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros controller-interface generate-parameter-library geometry-msgs pluginlib rclcpp rclcpp-lifecycle realtime-tools tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Broadcaster to publish cartesian states.";
    license = with lib.licenses; [ asl20 ];
  };
}
