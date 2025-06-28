
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, control-msgs, geometry-msgs, nav-msgs, open-manipulator-x-bringup, open-manipulator-x-description, open-manipulator-x-moveit-config, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-open-manipulator-x-teleop";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/humble/open_manipulator_x_teleop/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "f17dc7e7de7a24cdd8b6e6ca96729f008fdbc781035ceb2b3f67b13526a53084";
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
