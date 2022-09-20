
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp-devel, bayesian-belief-networks, catkin, dialogflow-task-executive, downward, ff, ffha, gdrive-ros, google-cloud-texttospeech, julius, julius-ros, libcmt, libsiftfast, mini-maxwell, nlopt, opt-camera, pgm-learner, rospatlite, rosping, rostwitter, sesame-ros, slic, voice-text }:
buildRosPackage {
  pname = "ros-melodic-jsk-3rdparty";
  version = "2.1.24-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/jsk_3rdparty/2.1.24-2.tar.gz";
    name = "2.1.24-2.tar.gz";
    sha256 = "d689658c87a23f49a5956e6a7832213d3f80c0572a5e5946b2fe762ac90578b1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ assimp-devel bayesian-belief-networks dialogflow-task-executive downward ff ffha gdrive-ros google-cloud-texttospeech julius julius-ros libcmt libsiftfast mini-maxwell nlopt opt-camera pgm-learner rospatlite rosping rostwitter sesame-ros slic voice-text ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
