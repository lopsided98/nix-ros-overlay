
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-launchman";
  version = "1.0.7";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/web_interface-release/archive/release/kinetic/launchman/1.0.7-0.tar.gz";
    name = "1.0.7-0.tar.gz";
    sha256 = "d386f83bb76f20ddd6ee8cafeba89933a5dd69b9854b1bce4c501642587baffc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roslaunch rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch Manager'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
