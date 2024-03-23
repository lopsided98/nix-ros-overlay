
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cpplint, curl, diagnostic-aggregator, diagnostic-updater, geometry-msgs, git, jq, lifecycle-msgs, mavros-msgs, microstrain-inertial-msgs, nav-msgs, nmea-msgs, rclcpp-lifecycle, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-microstrain-inertial-driver";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/humble/microstrain_inertial_driver/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "6eee20060c26778bc9e49a2742eb9dad567380e6a0bbaa7a112d982114bb29e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ curl git jq ros-environment rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-cpplint ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-updater geometry-msgs lifecycle-msgs mavros-msgs microstrain-inertial-msgs nav-msgs nmea-msgs rclcpp-lifecycle rosidl-default-runtime sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ git rosidl-default-generators ];

  meta = {
    description = "The ros_mscl package provides a driver for the LORD/Microstrain inertial products.";
    license = with lib.licenses; [ mit ];
  };
}
