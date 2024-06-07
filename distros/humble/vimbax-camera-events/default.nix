
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, rclcpp, vimbax-camera-msgs }:
buildRosPackage {
  pname = "ros-humble-vimbax-camera-events";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vimbax_ros2_driver-release/archive/release/humble/vimbax_camera_events/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "abd33aab6b80545b62975670460d35ae5c826ce731cce1107ff4d5c403efa901";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros vimbax-camera-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros vimbax-camera-msgs ];

  meta = {
    description = "Vimba X event support library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
