
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rr-swiftnav-piksi";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/RoverRobotics/rr_swiftnav_piksi-release/archive/release/kinetic/rr_swiftnav_piksi/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "1582be8a0ff55c255c8d20245c2a2acadc859aba450b3e72b269dde6984b0a84";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rover Robotics: ROS package for connecting to SwiftNav Piksi'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
