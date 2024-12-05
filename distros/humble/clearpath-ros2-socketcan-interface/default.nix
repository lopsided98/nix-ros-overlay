
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-clearpath-ros2-socketcan-interface";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_ros2_socketcan_interface-release/archive/release/humble/clearpath_ros2_socketcan_interface/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "4da41aa84a5fd27c212cbd158102d6a15c900b5041f8ea32590b3ce2dde12eae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "A ROS 2 socketcan interface.";
    license = with lib.licenses; [ bsd3 ];
  };
}
