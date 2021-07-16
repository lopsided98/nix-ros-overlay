
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, controller-interface, controller-manager, geometry-msgs, hardware-interface, nav-msgs, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, tf2, tf2-msgs }:
buildRosPackage {
  pname = "ros-foxy-diff-drive-controller";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/diff_drive_controller/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "02cbb15dd37364a622699b6b9022e08a33829648bbd1c5d1a9276ea23b25c646";
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
