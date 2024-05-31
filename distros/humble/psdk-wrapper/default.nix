
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ffmpeg, geometry-msgs, libopus, libusb1, nav-msgs, nlohmann_json, psdk-interfaces, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-psdk-wrapper";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/psdk_ros2-release/archive/release/humble/psdk_wrapper/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "12786d78ebfe9527ca98fdf6cc0f04b70ee77f6e221ffc90656a784159417bfb";
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
