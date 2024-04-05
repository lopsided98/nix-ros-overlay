
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-action-tutorials-py";
  version = "0.33.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/action_tutorials_py/0.33.2-1.tar.gz";
    name = "0.33.2-1.tar.gz";
    sha256 = "7af106cfa75cf19af3a9e8ba285d19eea0eb3d5f2bbe7864ac63fc76a5dfc20d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ action-tutorials-interfaces rclpy ];

  meta = {
    description = "Python action tutorial code";
    license = with lib.licenses; [ asl20 ];
  };
}
