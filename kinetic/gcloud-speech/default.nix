
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gcloud-speech-msgs, glog, actionlib, catkin, actionlib-msgs, gflags, grpc }:
buildRosPackage {
  pname = "ros-kinetic-gcloud-speech";
  version = "0.0.5";

  src = fetchurl {
    url = "https://github.com/CogRobRelease/gcloud_speech-release/archive/release/kinetic/gcloud_speech/0.0.5-0.tar.gz";
    name = "0.0.5-0.tar.gz";
    sha256 = "b1b722a5ffeb893be63d92de5b8bbb18f567f82971d32195162b347b94f05cc4";
  };

  buildType = "catkin";
  buildInputs = [ gcloud-speech-msgs glog actionlib actionlib-msgs gflags grpc ];
  propagatedBuildInputs = [ gcloud-speech-msgs glog actionlib actionlib-msgs gflags grpc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Google Cloud Speech client.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
