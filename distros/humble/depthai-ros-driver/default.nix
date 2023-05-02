
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, camera-calibration, cv-bridge, depthai, depthai-bridge, depthai-descriptions, diagnostic-msgs, image-pipeline, image-transport, image-transport-plugins, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs, vision-msgs }:
buildRosPackage {
  pname = "ros-humble-depthai-ros-driver";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_ros_driver/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "c0c0d17b999a08f6dfac8c9b2586edd115ef452f4f7e4d2794c8ce0c12414b6d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-auto camera-calibration cv-bridge depthai depthai-bridge depthai-descriptions diagnostic-msgs image-pipeline image-transport image-transport-plugins rclcpp rclcpp-components sensor-msgs std-msgs std-srvs vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Depthai ROS Monolithic node.'';
    license = with lib.licenses; [ mit ];
  };
}
