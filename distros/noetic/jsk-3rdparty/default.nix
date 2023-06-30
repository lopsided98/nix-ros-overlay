
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aques-talk, assimp-devel, bayesian-belief-networks, catkin, chaplus-ros, collada-urdf-jsk-patch, dialogflow-task-executive, downward, ff, ffha, google-chat-ros, google-cloud-texttospeech, influxdb-store, julius, julius-ros, libcmt, libsiftfast, lpg-planner, mini-maxwell, nfc-ros, opt-camera, osqp, pgm-learner, respeaker-ros, ros-google-cloud-language, ros-speech-recognition, rospatlite, rosping, rostwitter, sesame-ros, slic, switchbot-ros, voice-text, webrtcvad-ros, zdepth, zdepth-image-transport }:
buildRosPackage {
  pname = "ros-noetic-jsk-3rdparty";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/jsk_3rdparty/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "fe44d465891fd3a398b0ac54ada77a1ea0a4b40cb3b21c90c11bc1b7a76fadda";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ aques-talk assimp-devel bayesian-belief-networks chaplus-ros collada-urdf-jsk-patch dialogflow-task-executive downward ff ffha google-chat-ros google-cloud-texttospeech influxdb-store julius julius-ros libcmt libsiftfast lpg-planner mini-maxwell nfc-ros opt-camera osqp pgm-learner respeaker-ros ros-google-cloud-language ros-speech-recognition rospatlite rosping rostwitter sesame-ros slic switchbot-ros voice-text webrtcvad-ros zdepth zdepth-image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
