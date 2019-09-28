
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, gazebo-msgs, geometry-msgs, image-transport, ament-cmake-gtest, rclcpp, gazebo-ros, std-srvs, tf2-geometry-msgs, camera-info-manager, trajectory-msgs, tf2-ros, gazebo-dev, nav-msgs, std-msgs, ament-lint-common, sensor-msgs, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-gazebo-plugins";
  version = "3.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/dashing/gazebo_plugins/3.3.4-1.tar.gz";
    name = "3.3.4-1.tar.gz";
    sha256 = "94fade3f1d680f67770d229eeecdf61104f8e4759e3b5e348dbfe77e6ce6a2d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ gazebo-ros std-srvs tf2-geometry-msgs geometry-msgs camera-info-manager trajectory-msgs image-transport sensor-msgs cv-bridge tf2-ros gazebo-dev nav-msgs rclcpp std-msgs gazebo-msgs ];
  checkInputs = [ ament-lint-auto cv-bridge ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ gazebo-ros std-srvs tf2-geometry-msgs geometry-msgs camera-info-manager trajectory-msgs sensor-msgs image-transport cv-bridge tf2-ros gazebo-dev nav-msgs rclcpp std-msgs gazebo-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
