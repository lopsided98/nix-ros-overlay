
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-action, geometry-msgs, std-msgs, rosidl-default-runtime, std-srvs, ament-cmake, qt5, ament-index-cpp, rosidl-default-generators, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-turtlesim";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/eloquent/turtlesim/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "e80e0351f056b820f5bc8b71dbced5e308117bbafb5801f60c0e1a2e6d0827d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action geometry-msgs std-msgs std-srvs qt5.qtbase ament-index-cpp rclcpp ];
  propagatedBuildInputs = [ rclcpp-action geometry-msgs rosidl-default-runtime std-msgs std-srvs qt5.qtbase ament-index-cpp rclcpp ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''turtlesim is a tool made for teaching ROS and ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
