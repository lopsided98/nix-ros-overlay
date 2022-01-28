
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, microstrain-inertial-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-microstrain-inertial-examples";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/foxy/microstrain_inertial_examples/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "b2255cb7431c55638aed51cada3a54a35d52e4d53384f38995363c7100b40983";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ microstrain-inertial-msgs rclcpp rclcpp-components rclpy sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example listener for Parker LORD Sensing inertial device driver ros_mscl (C++).'';
    license = with lib.licenses; [ mit ];
  };
}
