
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, microstrain-inertial-msgs, rclcpp, rclcpp-components, rclpy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-microstrain-inertial-examples";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-ros2-release/archive/release/galactic/microstrain_inertial_examples/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "b986b25b816fe368624f934b1ff5268b2e98663d5565e4680e0c41bc2906428e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ microstrain-inertial-msgs rclcpp rclcpp-components rclpy sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Example listener for Parker LORD Sensing inertial device driver ros_mscl (C++).'';
    license = with lib.licenses; [ mit ];
  };
}
