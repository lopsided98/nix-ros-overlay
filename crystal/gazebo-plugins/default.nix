
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, sensor-msgs, geometry-msgs, std-msgs, camera-info-manager, ament-lint-common, ament-cmake, image-transport, tf2-geometry-msgs, cv-bridge, ament-cmake-gtest, gazebo-ros, rclcpp, nav-msgs, ament-lint-auto, gazebo-dev }:
buildRosPackage {
  pname = "ros-crystal-gazebo-plugins";
  version = "3.2.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/crystal/gazebo_plugins/3.2.0-0.tar.gz";
    name = "3.2.0-0.tar.gz";
    sha256 = "51a0467974dfe60f044ee9ce790bf66bd17cd0c3c2f342aacc7711bb7673fe8c";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs camera-info-manager image-transport tf2-geometry-msgs gazebo-ros rclcpp nav-msgs tf2-ros gazebo-dev ];
  checkInputs = [ cv-bridge ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs camera-info-manager image-transport tf2-geometry-msgs gazebo-ros rclcpp nav-msgs tf2-ros gazebo-dev ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
