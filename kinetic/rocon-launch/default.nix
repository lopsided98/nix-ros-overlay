
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-console, pythonPackages, catkin, rocon-python-utils, rosbash, rospy, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-rocon-launch";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_launch/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "f701d7e55980b2995cc26c417de11bd41f465eafdfd4a434e92756b1b99933ff";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg ];
  propagatedBuildInputs = [ rocon-console rocon-python-utils rosbash rospy roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A multi-roslaunch (for single and multi-master systems).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
