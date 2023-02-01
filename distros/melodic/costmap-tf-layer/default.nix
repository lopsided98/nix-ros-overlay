
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, dynamic-reconfigure, pluginlib, roscpp, roslint, rospy, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-costmap-tf-layer";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "igorbanfi";
        repo = "costmap_tf_layer-release";
        rev = "release/melodic/costmap_tf_layer/1.0.1-1";
        sha256 = "sha256-W1J+2viT+QDPxmoXP7wZ1N3BrxUZfgqYrqnbdco2p4s=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ costmap-2d dynamic-reconfigure pluginlib roscpp rospy tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-package that implements a costmap layer populated by observing tf frames.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
