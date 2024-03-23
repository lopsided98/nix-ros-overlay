
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, microstrain-inertial-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-microstrain-inertial-examples";
  version = "3.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/rolling/microstrain_inertial_examples/3.2.1-2.tar.gz";
    name = "3.2.1-2.tar.gz";
    sha256 = "5b159aec28aa35617eba032880191bc79e201a1ef8af385ae4861f4b1f381775";
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
