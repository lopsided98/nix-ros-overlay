
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, aruco, aruco-msgs, cv-bridge, geometry-msgs, image-transport, rclcpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-aruco-ros";
  version = "5.0.5-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/humble/aruco_ros/5.0.5-1.tar.gz";
    name = "5.0.5-1.tar.gz";
    sha256 = "741e24bca41690a6dfb0b46c1e6f4220c65f6faee626565aa9a8846be80c9202";
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
