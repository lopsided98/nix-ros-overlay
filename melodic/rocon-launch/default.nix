
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-console, pythonPackages, catkin, rocon-python-utils, rosbash, rospy, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-rocon-launch";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_launch/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "8239a56fd334d32336db287785c12fa526ce2e4c792fb91ff2c3687dec8b2945";
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
