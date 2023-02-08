
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, camera-info-manager, catkin, cv-bridge, diagnostic-updater, dynamic-reconfigure, gazebo-dev, gazebo-msgs, gazebo-ros, geometry-msgs, image-transport, message-generation, message-runtime, nav-msgs, nodelet, polled-camera, rosconsole, roscpp, rosgraph-msgs, rospy, rostest, sensor-msgs, std-msgs, std-srvs, tf, tf2-ros, trajectory-msgs, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-gazebo-plugins";
  version = "2.9.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "gazebo_ros_pkgs-release";
        rev = "release/noetic/gazebo_plugins/2.9.2-1";
        sha256 = "sha256-V5+2Nqf3xgyWD2Y9cA/5+21RKSyPF7PcVtO1++OKKpc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ angles camera-info-manager cv-bridge diagnostic-updater dynamic-reconfigure gazebo-dev gazebo-msgs gazebo-ros geometry-msgs image-transport message-runtime nav-msgs nodelet polled-camera rosconsole roscpp rosgraph-msgs rospy sensor-msgs std-msgs std-srvs tf tf2-ros trajectory-msgs urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components.'';
    license = with lib.licenses; [ "BSD-&-Apache-2.0" ];
  };
}
