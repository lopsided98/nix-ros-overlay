
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, control-msgs, geometry-msgs, nav-msgs, open-manipulator-x-bringup, open-manipulator-x-description, open-manipulator-x-moveit-config, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-open-manipulator-x-teleop";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/humble/open_manipulator_x_teleop/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "8c256869f9f423bff60c442494518dfdc7acec9bf162d17a897435b9a91222b3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ control-msgs geometry-msgs nav-msgs open-manipulator-x-bringup open-manipulator-x-description open-manipulator-x-moveit-config rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "OpenMANIPULATOR-X teleop ROS 2 package.";
    license = with lib.licenses; [ asl20 ];
  };
}
