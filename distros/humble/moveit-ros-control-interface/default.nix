
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager-msgs, moveit-common, moveit-core, moveit-simple-controller-manager, pluginlib, rclcpp-action, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-moveit-ros-control-interface";
  version = "2.5.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_ros_control_interface/2.5.7-1.tar.gz";
    name = "2.5.7-1.tar.gz";
    sha256 = "2d913ed8ec582226c216ee40be323d30a234f35f2c1a991a34ce51483eba7dab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager-msgs moveit-common moveit-core moveit-simple-controller-manager pluginlib rclcpp-action trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros_control controller manager interface for MoveIt";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
