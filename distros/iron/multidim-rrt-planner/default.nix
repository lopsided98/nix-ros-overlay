
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, ros2launch, std-msgs }:
buildRosPackage {
  pname = "ros-iron-multidim-rrt-planner";
  version = "0.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multidim_rrt_planner-release/archive/release/iron/multidim_rrt_planner/0.0.8-1.tar.gz";
    name = "0.0.8-1.tar.gz";
    sha256 = "9dc967e1cac7c5ed3970eac549db9fd32850a4680d2494a79ed6a9252acaef40";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy ros2launch std-msgs ];

  meta = {
    description = ''RRT exploration in 2D and 3D'';
    license = with lib.licenses; [ asl20 ];
  };
}
