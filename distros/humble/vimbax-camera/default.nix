
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, camera-info-manager, image-transport, launch-pytest, rclcpp, rclcpp-components, vimbax-camera-events, vimbax-camera-msgs, vmbc-interface }:
buildRosPackage {
  pname = "ros-humble-vimbax-camera";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vimbax_ros2_driver-release/archive/release/humble/vimbax_camera/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "a77cabbc5b4dc43c0f2284e9c5771a396bf7f53d710c511fdc366f36761b5db8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-pytest ];
  propagatedBuildInputs = [ camera-info-manager image-transport rclcpp rclcpp-components vimbax-camera-events vimbax-camera-msgs vmbc-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node package for Vimba X cameras";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
