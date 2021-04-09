
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, ddynamic-reconfigure, libsndfile, picovoice-msgs, portaudio, roscpp, roslib }:
buildRosPackage {
  pname = "ros-noetic-picovoice-driver";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/reinzor/picovoice_ros-release/archive/release/noetic/picovoice_driver/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "ac192c9f2989d15e9aae2fad6ae471c9ded28d7f31641e305ca04ede5d673501";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib ddynamic-reconfigure libsndfile picovoice-msgs portaudio roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Wrappers for the Picovoice libraries'';
    license = with lib.licenses; [ asl20 ];
  };
}
