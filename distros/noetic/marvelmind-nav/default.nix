
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, rospy, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-marvelmind-nav";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/MarvelmindRobotics/marvelmind_nav-release/archive/release/noetic/marvelmind_nav/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "748200b168add3d97206337a2b9a6b434e050c24b6127253bd355918794153e5";
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
