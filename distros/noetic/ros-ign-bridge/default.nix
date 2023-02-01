
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, ignition, message-generation, message-runtime, nav-msgs, rosconsole, roscpp, rosgraph-msgs, rostest, sensor-msgs, std-msgs, std-srvs, tf2-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-ros-ign-bridge";
  version = "0.111.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "ros_ign-release";
        rev = "release/noetic/ros_ign_bridge/0.111.2-1";
        sha256 = "sha256-GgoZQJl6+74xorE92RUNnU90FK6fLulublZuWxoN3/0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometry-msgs ignition.msgs5 ignition.transport8 message-runtime nav-msgs rosconsole roscpp rosgraph-msgs sensor-msgs std-msgs std-srvs tf2-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bridge communication between ROS and Ignition Transport'';
    license = with lib.licenses; [ asl20 ];
  };
}
