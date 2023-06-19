
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, camera-calibration, cv-bridge, depthai, depthai-bridge, depthai-descriptions, depthai-examples, depthai-ros-msgs, diagnostic-msgs, image-pipeline, image-transport, image-transport-plugins, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs, vision-msgs }:
buildRosPackage {
  pname = "ros-humble-depthai-ros-driver";
  version = "2.7.2-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_ros_driver/2.7.2-1.tar.gz";
    name = "2.7.2-1.tar.gz";
    sha256 = "03ed66141519eed62e763d172365d5066eb1413dc654f42f2d731f5cb2786b24";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-auto camera-calibration cv-bridge depthai depthai-bridge depthai-descriptions depthai-examples depthai-ros-msgs diagnostic-msgs image-pipeline image-transport image-transport-plugins rclcpp rclcpp-components sensor-msgs std-msgs std-srvs vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Depthai ROS Monolithic node.'';
    license = with lib.licenses; [ mit ];
  };
}
