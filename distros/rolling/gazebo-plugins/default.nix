
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, gazebo-dev, gazebo-msgs, gazebo-ros, geometry-msgs, image-transport, nav-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-gazebo-plugins";
  version = "3.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/rolling/gazebo_plugins/3.7.0-2.tar.gz";
    name = "3.7.0-2.tar.gz";
    sha256 = "da7c6d6a4ffee3b08dc9d6e7650c8e5e1eeca5c1c3b6a6ee3306526ddf1e5541";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common cv-bridge ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge gazebo-dev gazebo-msgs gazebo-ros geometry-msgs image-transport nav-msgs rclcpp sensor-msgs std-msgs std-srvs tf2-geometry-msgs tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components.'';
    license = with lib.licenses; [ "BSD-&-Apache-2.0" ];
  };
}
