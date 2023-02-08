
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-manager, geometry-msgs, hardware-interface, joint-limits-interface, joint-state-controller, joint-trajectory-controller, message-generation, move-base-msgs, nav-msgs, pluginlib, realtime-tools, roscpp, rostest, seed-r7-description, seed-smartactuator-sdk, sensor-msgs, std-msgs, tf, trajectory-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-seed-r7-ros-controller";
  version = "0.3.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "seed-solutions";
        repo = "seed_r7_ros_pkg-release";
        rev = "release/melodic/seed_r7_ros_controller/0.3.3-1";
        sha256 = "sha256-yT+D/0n7zfkYg0IQz7W0+5OVw+/j2mMTCvHbgx4G3GY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-manager geometry-msgs hardware-interface joint-limits-interface joint-state-controller joint-trajectory-controller message-generation move-base-msgs nav-msgs pluginlib realtime-tools roscpp rostest seed-r7-description seed-smartactuator-sdk sensor-msgs std-msgs tf trajectory-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_ros_controller package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
