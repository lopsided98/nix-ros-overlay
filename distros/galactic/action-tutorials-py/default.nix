
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-lint-auto, ament-lint-common, rclpy }:
buildRosPackage {
  pname = "ros-galactic-action-tutorials-py";
  version = "0.14.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/galactic/action_tutorials_py/0.14.3-1.tar.gz";
    name = "0.14.3-1.tar.gz";
    sha256 = "36257a38c0b3b7ec48cad3c344e535c59c3eee0f4fa4cb7a74babaa4b29f367e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-tutorials-interfaces rclpy ];

  meta = {
    description = ''Python action tutorial code'';
    license = with lib.licenses; [ asl20 ];
  };
}
