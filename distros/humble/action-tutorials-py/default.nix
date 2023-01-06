
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-lint-auto, ament-lint-common, rclpy }:
buildRosPackage {
  pname = "ros-humble-action-tutorials-py";
  version = "0.20.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/action_tutorials_py/0.20.2-1.tar.gz";
    name = "0.20.2-1.tar.gz";
    sha256 = "0d987305ad40e9c5eae9d70d82cb363f5a42a6f2b777debf46d04a2ff15c861d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-tutorials-interfaces rclpy ];

  meta = {
    description = ''Python action tutorial code'';
    license = with lib.licenses; [ asl20 ];
  };
}
