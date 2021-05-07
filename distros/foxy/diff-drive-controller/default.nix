
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, controller-interface, controller-manager, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-foxy-diff-drive-controller";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/diff_drive_controller/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "d4f42c99320ce0c061b2d7992d3deb0fa803f57bfd73e7cac109f4b3c723c0f8";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common controller-manager ];
  propagatedBuildInputs = [ controller-interface geometry-msgs hardware-interface nav-msgs rclcpp rclcpp-lifecycle realtime-tools tf2 tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Controller for a differential drive mobile base.'';
    license = with lib.licenses; [ asl20 ];
  };
}
