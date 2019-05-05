
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, portaudio, gflags, actionlib-msgs, catkin, pythonPackages, glog, actionlib, gcloud-speech-msgs }:
buildRosPackage {
  pname = "ros-lunar-gcloud-speech-utils";
  version = "0.0.5-r1";

  src = fetchurl {
    url = https://github.com/CogRobRelease/gcloud_speech-release/archive/release/lunar/gcloud_speech_utils/0.0.5-1.tar.gz;
    sha256 = "1c92df41ed8d28d907988445958e51598923ba4a6f6734a04be9331d2c589a7e";
  };

  buildInputs = [ portaudio pythonPackages.pyaudio gflags actionlib-msgs glog actionlib gcloud-speech-msgs ];
  propagatedBuildInputs = [ portaudio pythonPackages.pyaudio gflags actionlib-msgs glog actionlib gcloud-speech-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utilities and examples for gcloud_speech package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
