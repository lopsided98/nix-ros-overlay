
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, geometry-msgs, qt5, rclcpp, rclcpp-action, rosidl-default-generators, rosidl-default-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-turtlesim";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/rolling/turtlesim/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "456eb4acc74694f4bcb82f4c77a480a3c4f04ea30e5a2bef8d92a419255ac734";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ ament-index-cpp geometry-msgs qt5.qtbase rclcpp rclcpp-action rosidl-default-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''turtlesim is a tool made for teaching ROS and ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
