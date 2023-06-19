
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-xmllint, launch-testing, launch-testing-ros, pythonPackages, rclpy, ros2topic, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-joint-state-publisher";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joint_state_publisher-release/archive/release/iron/joint_state_publisher/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "b0afefb75839a250355afc8baeee1412fba687a8d977357f560cd7faf568a11f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-xmllint launch-testing launch-testing-ros pythonPackages.pytest ros2topic ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs ];

  meta = {
    description = ''This package contains a tool for setting and publishing joint state values for a given URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
