
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cv-bridge, diagnostic-msgs, diagnostic-updater, gazebo-msgs, gazebo-plugins, gazebo-ros, geometry-msgs, image-transport, message-generation, message-runtime, nav-msgs, orocos-kdl, polled-camera, pr2-controller-manager, pr2-hardware-interface, pr2-mechanism-model, pr2-msgs, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, tf, urdf }:
buildRosPackage {
  pname = "ros-noetic-pr2-gazebo-plugins";
  version = "2.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_simulator-release";
        rev = "release/noetic/pr2_gazebo_plugins/2.1.0-1";
        sha256 = "sha256-RGRX02nW3txDOmWs0lJbRflZ4rg5K3FxkXgfm7oWrEI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin std-srvs ];
  propagatedBuildInputs = [ angles cv-bridge diagnostic-msgs diagnostic-updater gazebo-msgs gazebo-plugins gazebo-ros geometry-msgs image-transport message-generation message-runtime nav-msgs orocos-kdl polled-camera pr2-controller-manager pr2-hardware-interface pr2-mechanism-model pr2-msgs roscpp rospy sensor-msgs std-msgs tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo Plugins for various PR2-specific sensors and actuators on the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
