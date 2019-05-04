
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, portaudio, gflags, actionlib-msgs, catkin, pythonPackages, glog, actionlib, gcloud-speech-msgs }:
buildRosPackage {
  pname = "ros-kinetic-gcloud-speech-utils";
  version = "0.0.5";

  src = fetchurl {
    url = https://github.com/CogRobRelease/gcloud_speech-release/archive/release/kinetic/gcloud_speech_utils/0.0.5-0.tar.gz;
    sha256 = "8355c6e39a67eb1bf6bebc024e7fde0abe69513dd72a067265318072c0ac0200";
  };

  buildInputs = [ portaudio pythonPackages.pyaudio gflags actionlib-msgs glog actionlib gcloud-speech-msgs ];
  propagatedBuildInputs = [ portaudio pythonPackages.pyaudio gflags actionlib-msgs glog actionlib gcloud-speech-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utilities and examples for gcloud_speech package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
