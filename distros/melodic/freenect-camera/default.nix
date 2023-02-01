
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, diagnostic-updater, dynamic-reconfigure, freenect, image-transport, log4cxx, nodelet, pluginlib, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-freenect-camera";
  version = "0.4.3-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "freenect_stack-release";
        rev = "release/melodic/freenect_camera/0.4.3-2";
        sha256 = "sha256-DM1/kZnkx+ilstVN+ZH9ssAuUxvo10/Y9GYnSUo+8Hg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager diagnostic-updater dynamic-reconfigure freenect image-transport log4cxx nodelet pluginlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A libfreenect-based ROS driver for the Microsoft Kinect.  This is
    a port of the OpenNI driver that uses libfreenect instead, because
    on some systems with some devices it works better.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
