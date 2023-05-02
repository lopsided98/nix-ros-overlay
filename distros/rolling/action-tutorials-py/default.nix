
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-lint-auto, ament-lint-common, rclpy }:
buildRosPackage {
  pname = "ros-rolling-action-tutorials-py";
  version = "0.28.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/action_tutorials_py/0.28.0-1.tar.gz";
    name = "0.28.0-1.tar.gz";
    sha256 = "00bda473c590a4a0f2f548630667b7ede1635cf4ea90ce6509cd315b779a1e60";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-tutorials-interfaces rclpy ];

  meta = {
    description = ''Python action tutorial code'';
    license = with lib.licenses; [ asl20 ];
  };
}
