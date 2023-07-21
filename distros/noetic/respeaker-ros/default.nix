
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, audio-common-msgs, catkin, catkin-virtualenv, dynamic-reconfigure, flac, geometry-msgs, jsk-tools, python3Packages, rostest, speech-recognition-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-respeaker-ros";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/respeaker_ros/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "64c74a8cc6a013421fc25c3539e1190a6d5dd8eeb3d33b58f629429c6cfa6a62";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv ];
  checkInputs = [ jsk-tools rostest ];
  propagatedBuildInputs = [ angles audio-common-msgs dynamic-reconfigure flac geometry-msgs python3Packages.numpy python3Packages.pyaudio speech-recognition-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The respeaker_ros package'';
    license = with lib.licenses; [ "Apache" ];
  };
}
