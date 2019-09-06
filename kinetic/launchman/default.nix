
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, roslaunch, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-launchman";
  version = "1.0.7";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/web_interface-release/archive/release/kinetic/launchman/1.0.7-0.tar.gz";
    name = "1.0.7-0.tar.gz";
    sha256 = "d386f83bb76f20ddd6ee8cafeba89933a5dd69b9854b1bce4c501642587baffc";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs roslaunch rospy ];
  propagatedBuildInputs = [ std-msgs roslaunch rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch Manager'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
