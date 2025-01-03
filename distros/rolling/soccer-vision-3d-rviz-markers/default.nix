
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, rclpy, soccer-vision-3d-msgs, soccer-vision-attribute-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-soccer-vision-3d-rviz-markers";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_vision_3d_rviz_markers-release/archive/release/rolling/soccer_vision_3d_rviz_markers/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "472a74bb8007409890117d619923e210eb0a528ad498c4c2b0cdb1c021d2b279";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy soccer-vision-3d-msgs soccer-vision-attribute-msgs visualization-msgs ];

  meta = {
    description = "Package that converts soccer_vision_3d_msgs to RViz markers";
    license = with lib.licenses; [ asl20 ];
  };
}
