
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, iproute2, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-ros2-socketcan-interface";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_ros2_socketcan_interface-release/archive/release/jazzy/clearpath_ros2_socketcan_interface/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "e270a83bbc911d848d88e615074d1bff9888383f21399ac4efa3543c14a1ff56";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs iproute2 rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "A ROS 2 socketcan interface.";
    license = with lib.licenses; [ bsd3 ];
  };
}
