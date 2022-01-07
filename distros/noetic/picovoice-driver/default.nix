
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, ddynamic-reconfigure, libsndfile, picovoice-msgs, portaudio, roscpp, roslib }:
buildRosPackage {
  pname = "ros-noetic-picovoice-driver";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/reinzor/picovoice_ros-release/archive/release/noetic/picovoice_driver/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "7fde59976511d7247a0558dc5ff1c040a381aa1923f8b0279a7cbd94d772d22d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib ddynamic-reconfigure libsndfile picovoice-msgs portaudio roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Wrappers for the Picovoice libraries'';
    license = with lib.licenses; [ asl20 ];
  };
}
