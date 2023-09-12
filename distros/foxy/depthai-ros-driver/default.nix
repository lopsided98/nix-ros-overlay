
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, composition, cv-bridge, depthai, depthai-bridge, depthai-descriptions, diagnostic-msgs, image-pipeline, image-transport, image-transport-plugins, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs, vision-msgs }:
buildRosPackage {
  pname = "ros-foxy-depthai-ros-driver";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/foxy/depthai_ros_driver/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "51865b0d98a8ad1ae1bf2d064cff577d0eb1eed3cb9839857442b644721408ac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-auto composition cv-bridge depthai depthai-bridge depthai-descriptions diagnostic-msgs image-pipeline image-transport image-transport-plugins rclcpp rclcpp-components sensor-msgs std-msgs std-srvs vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Depthai ROS Monolithic node.'';
    license = with lib.licenses; [ mit ];
  };
}
