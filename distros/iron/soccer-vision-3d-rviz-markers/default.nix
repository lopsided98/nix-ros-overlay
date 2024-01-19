
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, soccer-vision-3d-msgs, soccer-vision-attribute-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-soccer-vision-3d-rviz-markers";
  version = "0.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_vision_3d_rviz_markers-release/archive/release/iron/soccer_vision_3d_rviz_markers/0.0.1-3.tar.gz";
    name = "0.0.1-3.tar.gz";
    sha256 = "87c91ff84147809cd31b9c4ba3f6f11a2a95126ad521b9588440233898d9ee59";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy soccer-vision-3d-msgs soccer-vision-attribute-msgs visualization-msgs ];

  meta = {
    description = ''Package that converts soccer_vision_3d_msgs to RViz markers'';
    license = with lib.licenses; [ asl20 ];
  };
}
