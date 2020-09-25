
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nav-msgs, rclcpp, realsense2-camera, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-eloquent-realsense2-node";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/eloquent/realsense2_node/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "fa7de0712c22471cab60a80cad811bd7e0728c651e0bf544f2969961bb902627";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav-msgs rclcpp realsense2-camera sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 realsense node'';
    license = with lib.licenses; [ asl20 ];
  };
}
