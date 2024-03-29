
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ffmpeg, geometry-msgs, libopus, libusb1, nav-msgs, nlohmann_json, psdk-interfaces, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-psdk-wrapper";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/psdk_ros2-release/archive/release/humble/psdk_wrapper/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "282fd0a119b78d9e3de70d98a6ad8a81413b71cdbde0c9e01ab8ec1886c8e962";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ffmpeg geometry-msgs libopus libusb1 nav-msgs nlohmann_json psdk-interfaces rclcpp rclcpp-lifecycle sensor-msgs std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 wrapper for the DJI PSDK";
    license = with lib.licenses; [ "MPL" ];
  };
}
