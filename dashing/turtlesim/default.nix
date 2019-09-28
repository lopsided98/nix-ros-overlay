
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, ament-cmake, rosidl-default-generators, rclcpp, qt5, ament-index-cpp, std-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-turtlesim";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/dashing/turtlesim/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "91136c46aed931746fdf3b620f1352ad625925aaffba6218764fe506eaf90a05";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-srvs qt5.qtbase rclcpp ament-index-cpp std-msgs geometry-msgs ];
  propagatedBuildInputs = [ std-srvs qt5.qtbase rclcpp ament-index-cpp std-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''turtlesim is a tool made for teaching ROS and ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
