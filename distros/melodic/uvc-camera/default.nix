
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, image-transport, libv4l, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-uvc-camera";
  version = "0.2.7";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "camera_umd-release";
        rev = "release/melodic/uvc_camera/0.2.7-0";
        sha256 = "sha256-QHunEw5cFOK07rJo4wNgewKy7ugxNRNRaYf4LwRdwcI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager image-transport libv4l nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of node(let)s that stream images from USB cameras (UVC)
     and provide CameraInfo messages to consumers. Includes a
     two-camera node that provides rough synchronization
     for stereo vision.

     Currently uses the base driver from Morgan Quigley's uvc_cam package.'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
