
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, aruco, aruco-msgs, cv-bridge, geometry-msgs, image-transport, rclcpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-aruco-ros";
  version = "5.0.5-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_ros-release/archive/release/lyrical/aruco_ros/5.0.5-3.tar.gz";
    name = "5.0.5-3.tar.gz";
    sha256 = "8fa4ae4778f4f07e37638fb2eac861d359f49a750e659c5bc08b9a793e5feb75";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ aruco aruco-msgs cv-bridge geometry-msgs image-transport rclcpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The ARUCO Library has been developed by the Ava group of the Univeristy of Cordoba(Spain).
    It provides real-time marker based 3D pose estimation using AR markers.";
    license = with lib.licenses; [ mit ];
  };
}
