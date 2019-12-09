
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-cmake, image-transport, nav-msgs, ament-lint-auto, sensor-msgs, camera-info-manager, ament-lint-common, tf2-geometry-msgs, rclcpp, tf2-ros, ament-cmake-gtest, std-msgs, std-srvs, cv-bridge, gazebo-ros, gazebo-dev, trajectory-msgs, gazebo-msgs }:
buildRosPackage {
  pname = "ros-eloquent-gazebo-plugins";
  version = "3.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/eloquent/gazebo_plugins/3.4.2-1.tar.gz";
    name = "3.4.2-1.tar.gz";
    sha256 = "f3b0e5462cfe13f3ce34a9d3bc45a20d404318b326fb84a4d43a962908bd2e8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ trajectory-msgs sensor-msgs geometry-msgs std-msgs camera-info-manager std-srvs image-transport tf2-geometry-msgs gazebo-msgs cv-bridge gazebo-ros rclcpp nav-msgs tf2-ros gazebo-dev ];
  checkInputs = [ cv-bridge ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs geometry-msgs std-msgs std-srvs camera-info-manager image-transport tf2-geometry-msgs gazebo-msgs cv-bridge gazebo-ros rclcpp nav-msgs tf2-ros gazebo-dev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
