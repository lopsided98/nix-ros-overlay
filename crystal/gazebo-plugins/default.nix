
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, ament-cmake, tf2-geometry-msgs, ament-lint-common, camera-info-manager, image-transport, sensor-msgs, cv-bridge, ament-cmake-gtest, tf2-ros, gazebo-dev, nav-msgs, rclcpp, std-msgs, ament-lint-auto, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-gazebo-plugins";
  version = "3.2.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/crystal/gazebo_plugins/3.2.0-0.tar.gz;
    sha256 = "51a0467974dfe60f044ee9ce790bf66bd17cd0c3c2f342aacc7711bb7673fe8c";
  };

  buildInputs = [ gazebo-ros tf2-geometry-msgs camera-info-manager image-transport sensor-msgs tf2-ros gazebo-dev nav-msgs rclcpp std-msgs geometry-msgs ];
  checkInputs = [ ament-lint-auto cv-bridge ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ gazebo-ros tf2-geometry-msgs camera-info-manager image-transport sensor-msgs tf2-ros gazebo-dev nav-msgs rclcpp std-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
