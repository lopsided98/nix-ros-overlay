
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-perception-msgs, cv-bridge, geometry-msgs, image-transport, nodelet, pcl-conversions, pcl-ros, pluginlib, roscpp, sensor-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-image-flip";
  version = "0.6.19-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_perception_common-release";
        rev = "release/noetic/cob_image_flip/0.6.19-1";
        sha256 = "sha256-C/4MI9wfllMHF0HYW4KVswjJQT0xbfxh7/J6brGtuG0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-perception-msgs cv-bridge geometry-msgs image-transport nodelet pcl-conversions pcl-ros pluginlib roscpp sensor-msgs stereo-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Flips the image of Care-O-bots kinect in dependence of the viewing direction of the cameras to receive an upright image all the time.'';
    license = with lib.licenses; [ asl20 ];
  };
}
