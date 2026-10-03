
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, tobas-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-examples-py";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_examples_py/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "b8d5d9a3108e89757567450b6248e792c447ad9679fa02f8679f6dd492de4189";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rclpy tobas-msgs ];

  meta = {
    description = "Package containing example user scripts.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
