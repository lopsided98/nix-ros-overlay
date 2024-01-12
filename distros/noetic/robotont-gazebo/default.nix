
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-pkgs, joy, nav-msgs, robotont-description, robotont-nuc-description, roscpp, rospy, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-robotont-gazebo";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/robotont-release/robotont_gazebo-release/archive/release/noetic/robotont_gazebo/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "6284e77228389def9dc22b96a2adcd1b549c9e4f7218a8c8c037db1a442ea03f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-pkgs joy nav-msgs robotont-description robotont-nuc-description roscpp rospy std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robotont_gazebo package'';
    license = with lib.licenses; [ asl20 ];
  };
}
