
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, curl, diagnostic-updater, dpkg, dynamic-reconfigure, image-exposure-msgs, image-proc, image-transport, libusb1, nodelet, roscpp, roslaunch, roslint, sensor-msgs, wfov-camera-msgs }:
buildRosPackage {
  pname = "ros-noetic-spinnaker-camera-driver";
  version = "0.2.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "flir_camera_driver-release";
        rev = "release/noetic/spinnaker_camera_driver/0.2.5-1";
        sha256 = "sha256-SBvtToquRNpAP0UMsvldj2i1YaTb7d3ShQfvvj0WIN8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin curl dpkg ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ camera-info-manager diagnostic-updater dynamic-reconfigure image-exposure-msgs image-proc image-transport libusb1 nodelet roscpp sensor-msgs wfov-camera-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Spinnaker camera driver based on Spinnaker.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
