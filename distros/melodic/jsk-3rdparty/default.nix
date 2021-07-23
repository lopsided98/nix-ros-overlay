
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp-devel, bayesian-belief-networks, catkin, dialogflow-task-executive, downward, ff, ffha, gdrive-ros, google-cloud-texttospeech, julius, julius-ros, libcmt, libsiftfast, mini-maxwell, nlopt, opt-camera, pgm-learner, rospatlite, rosping, rostwitter, sesame-ros, slic, voice-text }:
buildRosPackage {
  pname = "ros-melodic-jsk-3rdparty";
  version = "2.1.23-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/jsk_3rdparty/2.1.23-1.tar.gz";
    name = "2.1.23-1.tar.gz";
    sha256 = "ade47b4f901130802a6ef28ac05b243edbf2a3d7e4fc484687d916eaca0cef16";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ assimp-devel bayesian-belief-networks dialogflow-task-executive downward ff ffha gdrive-ros google-cloud-texttospeech julius julius-ros libcmt libsiftfast mini-maxwell nlopt opt-camera pgm-learner rospatlite rosping rostwitter sesame-ros slic voice-text ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
