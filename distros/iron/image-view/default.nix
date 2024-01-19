
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, boost, camera-calibration-parsers, cv-bridge, image-transport, message-filters, rclcpp, rclcpp-components, sensor-msgs, std-srvs, stereo-msgs }:
buildRosPackage {
  pname = "ros-iron-image-view";
  version = "3.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_pipeline-release/archive/release/iron/image_view/3.0.1-3.tar.gz";
    name = "3.0.1-3.tar.gz";
    sha256 = "afa0a2e4c303244d85f8328a9e791db8f782ba2f5a74c6468f6ba603059fe6aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost camera-calibration-parsers cv-bridge image-transport message-filters rclcpp rclcpp-components sensor-msgs std-srvs stereo-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''A simple viewer for ROS image topics. Includes a specialized viewer
  for stereo + disparity images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
