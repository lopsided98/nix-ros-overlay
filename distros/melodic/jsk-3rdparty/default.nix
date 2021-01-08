
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp-devel, bayesian-belief-networks, catkin, dialogflow-task-executive, downward, ff, ffha, gdrive-ros, julius, julius-ros, libcmt, libsiftfast, mini-maxwell, nlopt, opt-camera, pgm-learner, rospatlite, rosping, rostwitter, sesame-ros, slic, voice-text }:
buildRosPackage {
  pname = "ros-melodic-jsk-3rdparty";
  version = "2.1.21-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/jsk_3rdparty/2.1.21-3.tar.gz";
    name = "2.1.21-3.tar.gz";
    sha256 = "1230ca69543b25fe233ad7cb15a8bad1359af779e0dcd7d3fa9a556ff38e9cc6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ assimp-devel bayesian-belief-networks dialogflow-task-executive downward ff ffha gdrive-ros julius julius-ros libcmt libsiftfast mini-maxwell nlopt opt-camera pgm-learner rospatlite rosping rostwitter sesame-ros slic voice-text ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
