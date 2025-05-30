
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aques-talk, assimp-devel, bayesian-belief-networks, catkin, chaplus-ros, dialogflow-task-executive, downward, emotion-analyzer, ff, ffha, gdrive-ros, google-chat-ros, google-cloud-texttospeech, influxdb-store, julius, julius-ros, libcmt, libsiftfast, lpg-planner, mini-maxwell, nfc-ros, opt-camera, osqp, pgm-learner, respeaker-ros, ros-google-cloud-language, ros-speech-recognition, rospatlite, rosping, rostwitter, sesame-ros, switchbot-ros, voicevox, webrtcvad-ros, zdepth, zdepth-image-transport }:
buildRosPackage {
  pname = "ros-noetic-jsk-3rdparty";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/jsk_3rdparty/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "2bf99db9f7f853668270312d357fced73a05792705e34087fec1adb873da5060";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ aques-talk assimp-devel bayesian-belief-networks chaplus-ros dialogflow-task-executive downward emotion-analyzer ff ffha gdrive-ros google-chat-ros google-cloud-texttospeech influxdb-store julius julius-ros libcmt libsiftfast lpg-planner mini-maxwell nfc-ros opt-camera osqp pgm-learner respeaker-ros ros-google-cloud-language ros-speech-recognition rospatlite rosping rostwitter sesame-ros switchbot-ros voicevox webrtcvad-ros zdepth zdepth-image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "<p>Metapackage that contains commonly used 3rdparty toolset for jsk-ros-pkg</p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
