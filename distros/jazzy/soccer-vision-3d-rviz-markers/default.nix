
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, soccer-vision-3d-msgs, soccer-vision-attribute-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-soccer-vision-3d-rviz-markers";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_vision_3d_rviz_markers-release/archive/release/jazzy/soccer_vision_3d_rviz_markers/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "c6de2f7ca65d7351c99ad7491be28013d195c3b231cfeb652fe37a4c8c83ec4a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy soccer-vision-3d-msgs soccer-vision-attribute-msgs visualization-msgs ];

  meta = {
    description = "Package that converts soccer_vision_3d_msgs to RViz markers";
    license = with lib.licenses; [ asl20 ];
  };
}
