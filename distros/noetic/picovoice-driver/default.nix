
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, ddynamic-reconfigure, libsndfile, libyamlcpp, picovoice-msgs, roscpp, roslib }:
buildRosPackage {
  pname = "ros-noetic-picovoice-driver";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/reinzor/picovoice_ros-release/archive/release/noetic/picovoice_driver/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "696208227a732a4918b3aec973035bdbf57f5218e2d71bef2e057660d19b2d64";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib ddynamic-reconfigure libsndfile libyamlcpp picovoice-msgs roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Wrappers for the Picovoice libraries'';
    license = with lib.licenses; [ asl20 ];
  };
}
