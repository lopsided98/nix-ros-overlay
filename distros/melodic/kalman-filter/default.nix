
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, rospy }:
buildRosPackage {
  pname = "ros-melodic-kalman-filter";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/melodic/kalman_filter/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "475f257f7956a310bf68174451cc299d57b40d0933c72a6d2ec878c9deef76fb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simple Kalman Filter in Python'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
