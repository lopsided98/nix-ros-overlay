
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-cmake, image-transport, nav-msgs, ament-lint-auto, sensor-msgs, camera-info-manager, ament-lint-common, tf2-geometry-msgs, rclcpp, tf2-ros, ament-cmake-gtest, std-msgs, std-srvs, cv-bridge, gazebo-ros, gazebo-dev, trajectory-msgs, gazebo-msgs }:
buildRosPackage {
  pname = "ros-dashing-gazebo-plugins";
  version = "3.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/dashing/gazebo_plugins/3.3.4-1.tar.gz";
    name = "3.3.4-1.tar.gz";
    sha256 = "94fade3f1d680f67770d229eeecdf61104f8e4759e3b5e348dbfe77e6ce6a2d6";
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
