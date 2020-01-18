
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp-devel, bayesian-belief-networks, catkin, dialogflow-task-executive, downward, ff, ffha, gdrive-ros, julius, julius-ros, libcmt, libsiftfast, mini-maxwell, nlopt, opt-camera, pgm-learner, rospatlite, rosping, sesame-ros, slic, voice-text }:
buildRosPackage {
  pname = "ros-kinetic-jsk-3rdparty";
  version = "2.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/jsk_3rdparty/2.1.15-1.tar.gz";
    name = "2.1.15-1.tar.gz";
    sha256 = "5d432d4d46dada5a68c0e8c182ddc020bdd961f6c006eae38823312a2cc2248e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ assimp-devel bayesian-belief-networks dialogflow-task-executive downward ff ffha gdrive-ros julius julius-ros libcmt libsiftfast mini-maxwell nlopt opt-camera pgm-learner rospatlite rosping sesame-ros slic voice-text ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
