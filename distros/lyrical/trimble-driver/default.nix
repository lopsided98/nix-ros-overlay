
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, boost, diagnostic-msgs, geographiclib, geometry-msgs, launch-testing, libpcap, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, trimble-gsof-msgs, trimble-interfaces }:
buildRosPackage {
  pname = "ros-lyrical-trimble-driver";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trimble_driver_ros-release/archive/release/lyrical/trimble_driver/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "460ea05b7c3a9f7dc3ae7233bad9f96463dcdbf053f3a01d7af714d385cc49a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest launch-testing ];
  propagatedBuildInputs = [ boost diagnostic-msgs geographiclib geometry-msgs libpcap nav-msgs rclcpp rclcpp-components sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros trimble-gsof-msgs trimble-interfaces ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Connect Trimble products publishing GSOF data to ROS.";
    license = with lib.licenses; [ bsd2 ];
  };
}
