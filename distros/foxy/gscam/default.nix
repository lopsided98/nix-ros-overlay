
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, camera-calibration-parsers, camera-info-manager, class-loader, cv-bridge, gst_all_1, image-transport, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-gscam";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gscam-release/archive/release/foxy/gscam/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "f2539ee337ae0b3a0ae099b825ec4db091154beb68c118a9f3df53cba7d8d1f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-calibration-parsers camera-info-manager class-loader cv-bridge gst_all_1.gst-plugins-base gst_all_1.gstreamer image-transport rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A ROS camera driver that uses gstreamer to connect to
    devices such as webcams.'';
    license = with lib.licenses; [ "Apache-2.0-License" ];
  };
}
