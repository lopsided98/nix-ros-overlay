
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, ros2launch, std-msgs }:
buildRosPackage {
  pname = "ros-iron-multidim-rrt-planner";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multidim_rrt_planner-release/archive/release/iron/multidim_rrt_planner/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "543682a13c9e1504d481b5b5d9c64ada8994e8152e043ff1bb65315dbcbb8549";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy ros2launch std-msgs ];

  meta = {
    description = ''RRT exploration in 2D and 3D'';
    license = with lib.licenses; [ asl20 ];
  };
}
