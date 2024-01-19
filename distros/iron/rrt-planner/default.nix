
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, ros2launch, std-msgs }:
buildRosPackage {
  pname = "ros-iron-rrt-planner";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multidim_rrt_planner-release/archive/release/iron/rrt_planner/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "f8677c1186d354a55e34476ff53e61a34fc569bff68e8b3202363398a19523b2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy ros2launch std-msgs ];

  meta = {
    description = ''RRT exploration in 2D and 3D'';
    license = with lib.licenses; [ asl20 ];
  };
}
