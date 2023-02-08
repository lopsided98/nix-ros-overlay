
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ackermann-msgs, catkin, geometry-msgs, nav-msgs, nodelet, pluginlib, roscpp, roslint, std-msgs, tf, vesc-msgs }:
buildRosPackage {
  pname = "ros-melodic-vesc-ackermann";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "f1tenth";
        repo = "vesc-release";
        rev = "release/melodic/vesc_ackermann/1.1.0-1";
        sha256 = "sha256-wzk+jClgQuFZ38OYHpLesICUm7mGsmo44YeZrEmPeLA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ ackermann-msgs geometry-msgs nav-msgs nodelet pluginlib roscpp std-msgs tf vesc-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Translate between VESC messages and ROS ackermann and odometry messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
