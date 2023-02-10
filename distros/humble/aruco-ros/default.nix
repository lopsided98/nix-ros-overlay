
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, aruco, aruco-msgs, cv-bridge, geometry-msgs, image-transport, rclcpp, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-aruco-ros";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/aruco_ros-release/archive/release/humble/aruco_ros/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "82efd2943b491cc0d620dcee270649528fa7e5c765ebbbcd27cd42b8e47f7ff2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ aruco aruco-msgs cv-bridge geometry-msgs image-transport rclcpp sensor-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The ARUCO Library has been developed by the Ava group of the Univeristy of Cordoba(Spain).
    It provides real-time marker based 3D pose estimation using AR markers.'';
    license = with lib.licenses; [ mit ];
  };
}
