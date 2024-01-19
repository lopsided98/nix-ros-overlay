
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, audio-common-msgs, catkin, catkin-virtualenv, dynamic-reconfigure, flac, geometry-msgs, jsk-tools, python3Packages, rostest, speech-recognition-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-respeaker-ros";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/respeaker_ros/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "045b23e9e8be39f82cca6dfff49138c9b8e1f9b28dd364a82afc8eb89fae937a";
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
