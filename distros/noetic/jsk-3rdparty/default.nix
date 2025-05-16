
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aques-talk, assimp-devel, bayesian-belief-networks, catkin, chaplus-ros, dialogflow-task-executive, downward, emotion-analyzer, ff, ffha, gdrive-ros, google-chat-ros, google-cloud-texttospeech, influxdb-store, julius, julius-ros, libcmt, libsiftfast, lpg-planner, mini-maxwell, nfc-ros, opt-camera, osqp, pgm-learner, respeaker-ros, ros-google-cloud-language, ros-speech-recognition, rospatlite, rosping, rostwitter, sesame-ros, switchbot-ros, voicevox, webrtcvad-ros, zdepth, zdepth-image-transport }:
buildRosPackage {
  pname = "ros-noetic-jsk-3rdparty";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/jsk_3rdparty/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "1ecf508c0c3ff03b3912a44adbba8f9514b8fecaa8d63ed2fba00ffeff3a9a77";
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
