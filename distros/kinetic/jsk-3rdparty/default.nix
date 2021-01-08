
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp-devel, bayesian-belief-networks, catkin, dialogflow-task-executive, downward, ff, ffha, gdrive-ros, julius, julius-ros, libcmt, libsiftfast, mini-maxwell, nlopt, opt-camera, pgm-learner, rospatlite, rosping, sesame-ros, slic, voice-text }:
buildRosPackage {
  pname = "ros-kinetic-jsk-3rdparty";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/jsk_3rdparty/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "1f13c6aec9f89a7a2ff22f5f776fbc97605516b3967f6d7526e29ef3d73e9d3a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ assimp-devel bayesian-belief-networks dialogflow-task-executive downward ff ffha gdrive-ros julius julius-ros libcmt libsiftfast mini-maxwell nlopt opt-camera pgm-learner rospatlite rosping sesame-ros slic voice-text ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
