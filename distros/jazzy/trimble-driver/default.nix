
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, boost, diagnostic-msgs, geographiclib, geometry-msgs, launch-testing, libpcap, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, trimble-gsof-msgs, trimble-interfaces }:
buildRosPackage {
  pname = "ros-jazzy-trimble-driver";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trimble_driver_ros-release/archive/release/jazzy/trimble_driver/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "8305eca085e9f531f43450673eeae3b0681b3c1a9546beb7570f4330592c8c2c";
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
