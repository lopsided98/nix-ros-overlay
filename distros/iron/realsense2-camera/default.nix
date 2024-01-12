
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, cv-bridge, diagnostic-updater, eigen, geometry-msgs, image-transport, launch-ros, librealsense2, nav-msgs, rclcpp, rclcpp-components, realsense2-camera-msgs, ros-environment, sensor-msgs, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-realsense2-camera";
  version = "4.54.1-r2";

  src = fetchurl {
    url = "https://github.com/IntelRealSense/realsense-ros-release/archive/release/iron/realsense2_camera/4.54.1-2.tar.gz";
    name = "4.54.1-2.tar.gz";
    sha256 = "41bec9a96fbce8d38e4b88321ddb92218d41e7b348fcacf119302de57333d4d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ builtin-interfaces cv-bridge diagnostic-updater eigen geometry-msgs image-transport launch-ros librealsense2 nav-msgs rclcpp rclcpp-components realsense2-camera-msgs sensor-msgs std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RealSense camera package allowing access to Intel SR300 and D400 3D cameras'';
    license = with lib.licenses; [ asl20 ];
  };
}
