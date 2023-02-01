
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, soccer-vision-3d-msgs, soccer-vision-attribute-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-soccer-vision-3d-rviz-markers";
  version = "0.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "soccer_vision_3d_rviz_markers-release";
        rev = "release/rolling/soccer_vision_3d_rviz_markers/0.0.1-1";
        sha256 = "sha256-lMv9aUB99LdKEBLWkrN0iD1tZAXUkRcEnB/dizyH9js=";
      };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy soccer-vision-3d-msgs soccer-vision-attribute-msgs visualization-msgs ];

  meta = {
    description = ''Package that converts soccer_vision_3d_msgs to RViz markers'';
    license = with lib.licenses; [ asl20 ];
  };
}
