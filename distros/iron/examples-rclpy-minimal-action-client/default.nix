
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-iron-examples-rclpy-minimal-action-client";
  version = "0.18.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/iron/examples_rclpy_minimal_action_client/0.18.0-2.tar.gz";
    name = "0.18.0-2.tar.gz";
    sha256 = "bb09151d91f1bbe9b008b411c6cb5a5bbf3e7e0fc25f13df78d4cf8366b28136";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ action-msgs example-interfaces rclpy ];

  meta = {
    description = ''Examples of minimal action clients using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
