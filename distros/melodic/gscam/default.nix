
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-calibration-parsers, camera-info-manager, catkin, cv-bridge, gst_all_1, image-transport, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-gscam";
  version = "1.0.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "gscam-release";
        rev = "release/melodic/gscam/1.0.1-0";
        sha256 = "sha256-xL+ss3/a5h2gqoOj5oMM8jNFIjHpuNHEEtjEhPtecSU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin gst_all_1.gst-plugins-base gst_all_1.gstreamer ];
  propagatedBuildInputs = [ camera-calibration-parsers camera-info-manager cv-bridge image-transport nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS camera driver that uses gstreamer to connect to
    devices such as webcams.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
