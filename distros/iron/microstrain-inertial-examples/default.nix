
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, microstrain-inertial-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-microstrain-inertial-examples";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/iron/microstrain_inertial_examples/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "c4d47499bc861a140fcff349d9769e342dcd8b2dbdcb893113d44536f9626b0c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ microstrain-inertial-msgs rclcpp rclcpp-components rclpy sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Example listener for Parker LORD Sensing inertial device driver ros_mscl (C++).";
    license = with lib.licenses; [ mit ];
  };
}
