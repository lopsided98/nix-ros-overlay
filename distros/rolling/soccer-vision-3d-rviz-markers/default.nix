
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, soccer-vision-3d-msgs, soccer-vision-attribute-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-soccer-vision-3d-rviz-markers";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_vision_3d_rviz_markers-release/archive/release/rolling/soccer_vision_3d_rviz_markers/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "240cc307e92bb9edf5e09ae01db20f3c14a453af88d8658931c7f83d78e57697";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy soccer-vision-3d-msgs soccer-vision-attribute-msgs visualization-msgs ];

  meta = {
    description = "Package that converts soccer_vision_3d_msgs to RViz markers";
    license = with lib.licenses; [ asl20 ];
  };
}
