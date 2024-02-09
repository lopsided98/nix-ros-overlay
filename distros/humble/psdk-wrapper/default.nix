
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ffmpeg, geometry-msgs, libopus, libusb1, nav-msgs, psdk-interfaces, rclcpp, rclcpp-lifecycle, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-psdk-wrapper";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/psdk_ros2-release/archive/release/humble/psdk_wrapper/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "65e25751aadfdc523aa605c3b6602172d624432aba31f630f8b17ba47a9d328f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ffmpeg geometry-msgs libopus libusb1 nav-msgs psdk-interfaces rclcpp rclcpp-lifecycle sensor-msgs std-msgs std-srvs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 wrapper for the DJI PSDK'';
    license = with lib.licenses; [ "MPL" ];
  };
}
