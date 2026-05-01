
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, soccer-vision-3d-msgs, soccer-vision-attribute-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-soccer-vision-3d-rviz-markers";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_vision_3d_rviz_markers-release/archive/release/lyrical/soccer_vision_3d_rviz_markers/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "3349bbcfe34c009ba6bdda37dc8af778e3c7cf8d103735bc708bdbc71125856c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy soccer-vision-3d-msgs soccer-vision-attribute-msgs visualization-msgs ];

  meta = {
    description = "Package that converts soccer_vision_3d_msgs to RViz markers";
    license = with lib.licenses; [ asl20 ];
  };
}
