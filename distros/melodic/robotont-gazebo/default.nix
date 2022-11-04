
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-pkgs, joy, nav-msgs, robotont-description, robotont-nuc-description, roscpp, rospy, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-robotont-gazebo";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/robotont-release/robotont_gazebo-release/archive/release/melodic/robotont_gazebo/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "9acf2202f009b66f50b21d81ae548fca3aa49a6f0aa3831a185eb784d1ca867c";
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
