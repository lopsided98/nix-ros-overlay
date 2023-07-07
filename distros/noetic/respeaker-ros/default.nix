
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, audio-common-msgs, catkin, catkin-virtualenv, dynamic-reconfigure, flac, geometry-msgs, jsk-tools, python3Packages, speech-recognition-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-respeaker-ros";
  version = "2.1.26-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/respeaker_ros/2.1.26-1.tar.gz";
    name = "2.1.26-1.tar.gz";
    sha256 = "54299b14fb5419c66dd971de0b140e4275eb803ed470627c7e2168544faa6f3b";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv ];
  checkInputs = [ jsk-tools ];
  propagatedBuildInputs = [ angles audio-common-msgs dynamic-reconfigure flac geometry-msgs python3Packages.numpy python3Packages.pyaudio speech-recognition-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The respeaker_ros package'';
    license = with lib.licenses; [ "Apache" ];
  };
}
