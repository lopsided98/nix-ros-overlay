
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, audio-common-msgs, catkin, catkin-virtualenv, dynamic-reconfigure, flac, geometry-msgs, jsk-tools, python3Packages, rostest, speech-recognition-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-respeaker-ros";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/respeaker_ros/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "7d420d87ca0ffb2fedc7ea6a852bebd8987121dfbfb30fc9aa1906407c67318d";
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
