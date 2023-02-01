
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, cv-bridge, image-transport, jsk-recognition-utils, jsk-topic-tools, libsiftfast, nodelet, posedetection-msgs, python3Packages, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-imagesift";
  version = "1.2.15-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_recognition-release";
        rev = "release/noetic/imagesift/1.2.15-1";
        sha256 = "sha256-r9uhAIkmQer5PvqENwrrsezi1M+tIToO+CW4RBFPA8g=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules python3Packages.setuptools ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ cv-bridge image-transport jsk-recognition-utils jsk-topic-tools libsiftfast nodelet posedetection-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''For every image, computes its sift features and send a new message with the image, its intrinsic parameters, and the features.
    Parameters include:
    display - shows the image on the local computer'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
