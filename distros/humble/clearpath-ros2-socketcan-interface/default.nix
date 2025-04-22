
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, can-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-clearpath-ros2-socketcan-interface";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_ros2_socketcan_interface-release/archive/release/humble/clearpath_ros2_socketcan_interface/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "084e0e3967469d17637de1003a8aba623330cb6ebad4c05a49d76451f23650b6";
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
