
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, aruco, aruco-msgs, cv-bridge, geometry-msgs, image-transport, rclcpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-aruco-ros";
  version = "5.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aruco_ros-release/archive/release/kilted/aruco_ros/5.0.5-2.tar.gz";
    name = "5.0.5-2.tar.gz";
    sha256 = "475080431e0e47fe448e0fb46c8cf8546b2d7451af4782148a9955b61415d816";
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
