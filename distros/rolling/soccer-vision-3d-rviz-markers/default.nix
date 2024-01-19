
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, soccer-vision-3d-msgs, soccer-vision-attribute-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-soccer-vision-3d-rviz-markers";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_vision_3d_rviz_markers-release/archive/release/rolling/soccer_vision_3d_rviz_markers/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "b2294e0430270494efe9b00587dca45e522dae412e4618460342d91bf387220e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy soccer-vision-3d-msgs soccer-vision-attribute-msgs visualization-msgs ];

  meta = {
    description = ''Package that converts soccer_vision_3d_msgs to RViz markers'';
    license = with lib.licenses; [ asl20 ];
  };
}
