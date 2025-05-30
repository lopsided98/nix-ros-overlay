
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, audio-common-msgs, catkin, catkin-virtualenv, dynamic-reconfigure, flac, geometry-msgs, jsk-tools, python3Packages, rostest, speech-recognition-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-respeaker-ros";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/respeaker_ros/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "2b98b216061e7b44b729131d1f9a0885660c64708a135ab4368938ab405327e9";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv ];
  checkInputs = [ jsk-tools rostest ];
  propagatedBuildInputs = [ angles audio-common-msgs dynamic-reconfigure flac geometry-msgs python3Packages.numpy python3Packages.pyaudio speech-recognition-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The respeaker_ros package";
    license = with lib.licenses; [ "Apache" ];
  };
}
