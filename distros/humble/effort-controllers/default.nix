
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, controller-manager, forward-command-controller, pluginlib, rclcpp, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-humble-effort-controllers";
  version = "2.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/effort_controllers/2.17.3-1.tar.gz";
    name = "2.17.3-1.tar.gz";
    sha256 = "673875aa6f5c4ff414ce1a5edd34e45702ff805e1574c5e2e80d7898e149f9ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pluginlib ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros forward-command-controller rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic controller for forwarding commands.'';
    license = with lib.licenses; [ asl20 ];
  };
}
