
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros, camera-info-manager, cv-bridge, depth-image-proc, depthai, depthai-bridge, depthai-descriptions, depthai-ros-msgs, foxglove-msgs, image-transport, nav-msgs, opencv, rclcpp, robot-state-publisher, ros-environment, rviz-imu-plugin, sensor-msgs, std-msgs, stereo-msgs, vision-msgs, xacro }:
buildRosPackage {
  pname = "ros-kilted-depthai-examples";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/kilted/depthai_examples/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "49b1a6ad818280c82c7f9412b1256e927456d15934b433fe6e98a80209cfa29a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ backward-ros camera-info-manager cv-bridge depth-image-proc depthai depthai-bridge depthai-descriptions depthai-ros-msgs foxglove-msgs image-transport nav-msgs opencv opencv.cxxdev rclcpp robot-state-publisher ros-environment rviz-imu-plugin sensor-msgs std-msgs stereo-msgs vision-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The depthai_examples package";
    license = with lib.licenses; [ mit ];
  };
}
