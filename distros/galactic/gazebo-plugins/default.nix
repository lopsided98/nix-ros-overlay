
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, gazebo-dev, gazebo-msgs, gazebo-ros, geometry-msgs, image-transport, nav-msgs, rclcpp, sensor-msgs, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-galactic-gazebo-plugins";
  version = "3.5.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/galactic/gazebo_plugins/3.5.2-5.tar.gz";
    name = "3.5.2-5.tar.gz";
    sha256 = "fd99b1f3d70e84d005d4d2f247ecf5b3c334ab02e4073ed3e76a61462b9f4be4";
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
