
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, diagnostic-updater, dynamic-reconfigure, libpcap, message-generation, message-runtime, nodelet, pcl, pcl-conversions, pcl-ros, pluginlib, roscpp, roslaunch, roslib, rospy, rostest, rslidar-msgs, sensor-msgs, std-msgs, tf, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-rslidar-driver";
  version = "1.0.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "CPFL";
        repo = "robosense-release";
        rev = "release/melodic/rslidar_driver/1.0.2-0";
        sha256 = "sha256-R1q9PNbKUkteIRQYm8ECqufqsNNYEyNJnyuAI8IaKVw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin libpcap message-generation roslaunch rostest tf2-ros ];
  propagatedBuildInputs = [ angles diagnostic-updater dynamic-reconfigure message-runtime nodelet pcl pcl-conversions pcl-ros pluginlib roscpp roslib rospy rslidar-msgs sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''segmentation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
