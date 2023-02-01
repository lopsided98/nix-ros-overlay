
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, catkin, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, image-transport, nodelet, nodelet-topic-tools, polled-camera, prosilica-gige-sdk, rosconsole, roscpp, self-test, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-prosilica-camera";
  version = "1.9.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "prosilica_driver-release";
        rev = "release/noetic/prosilica_camera/1.9.5-1";
        sha256 = "sha256-mTpHb3q2VJzCDD+lbdBUR/QVVfxvfNi+C0wZjy63DZ0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin rosconsole ];
  propagatedBuildInputs = [ camera-calibration-parsers diagnostic-msgs diagnostic-updater dynamic-reconfigure image-transport nodelet nodelet-topic-tools polled-camera prosilica-gige-sdk roscpp self-test sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver node for AVT/Prosilica Gigabit Ethernet (GigE) cameras.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
