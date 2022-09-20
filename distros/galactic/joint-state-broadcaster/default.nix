
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools, ros2-control-test-assets, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-joint-state-broadcaster";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/galactic/joint_state_broadcaster/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "39e5513e5aba499733c1eec5acb4c93a15b968ed02b87c33a89245f86c2e192f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager rclcpp ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs controller-interface hardware-interface pluginlib rclcpp-lifecycle rcutils realtime-tools sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Broadcaster to publish joint state'';
    license = with lib.licenses; [ asl20 ];
  };
}
