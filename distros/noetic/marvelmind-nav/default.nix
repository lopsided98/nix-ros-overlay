
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-marvelmind-nav";
  version = "1.0.13-r1";

  src = fetchurl {
    url = "https://github.com/MarvelmindRobotics/marvelmind_nav-release/archive/release/noetic/marvelmind_nav/1.0.13-1.tar.gz";
    name = "1.0.13-1.tar.gz";
    sha256 = "3f9ace8cf37ec2f21c90d2ed3f5ab15db82f4ff2d7f0d5cb0da27b7dcec5e2cd";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp rospy std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Marvelmind local navigation system'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
