
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, gazebo-dev, gazebo-msgs, gazebo-ros, geometry-msgs, image-transport, nav-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-gazebo-plugins";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/humble/gazebo_plugins/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "a6b0de521e991d562898f73a9ac0693a4ba4637e19048fdf880cb281add72446";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common cv-bridge ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge gazebo-dev gazebo-msgs gazebo-ros geometry-msgs image-transport nav-msgs rclcpp sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components.";
    license = with lib.licenses; [ "BSD-&-Apache-2.0" ];
  };
}
