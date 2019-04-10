
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, gflags, catkin, grpc, glog, actionlib, gcloud-speech-msgs }:
buildRosPackage {
  pname = "ros-lunar-gcloud-speech";
  version = "0.0.5-r1";

  src = fetchurl {
    url = https://github.com/CogRobRelease/gcloud_speech-release/archive/release/lunar/gcloud_speech/0.0.5-1.tar.gz;
    sha256 = "155095c859b59edda33203dc774a7ae9338cd76f52c379862d3d95f7ea17dc6d";
  };

  buildInputs = [ grpc actionlib glog gflags gcloud-speech-msgs actionlib-msgs ];
  propagatedBuildInputs = [ grpc actionlib glog gflags gcloud-speech-msgs actionlib-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Google Cloud Speech client.'';
    #license = lib.licenses.BSD;
  };
}
