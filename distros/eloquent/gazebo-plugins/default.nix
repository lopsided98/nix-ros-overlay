
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, gazebo-dev, gazebo-msgs, gazebo-ros, geometry-msgs, image-transport, nav-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-eloquent-gazebo-plugins";
  version = "3.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/eloquent/gazebo_plugins/3.4.3-1.tar.gz";
    name = "3.4.3-1.tar.gz";
    sha256 = "b0d3ef22be8fe86c92e0608f4231b1a2499b42c0ad93244222b57cfd9e180b80";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common cv-bridge ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge gazebo-dev gazebo-msgs gazebo-ros geometry-msgs image-transport nav-msgs rclcpp sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
