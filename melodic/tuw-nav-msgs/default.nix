
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tuw-geometry-msgs, tf, catkin, nav-msgs, message-generation, message-runtime, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-tuw-nav-msgs";
  version = "0.0.13";

  src = fetchurl {
    url = https://github.com/tuw-robotics/tuw_msgs-release/archive/release/melodic/tuw_nav_msgs/0.0.13-0.tar.gz;
    sha256 = "6dd62f9b473be78c32bafb0b1f9c9410d2ed6f2b87586ce77f51e84f49132c39";
  };

  propagatedBuildInputs = [ nav-msgs tuw-geometry-msgs message-runtime rospy std-msgs geometry-msgs tf roscpp ];
  nativeBuildInputs = [ tuw-geometry-msgs catkin roscpp nav-msgs message-generation rospy std-msgs tf geometry-msgs ];

  meta = {
    description = ''The tuw_nav_msgs package'';
    #license = lib.licenses.BSD;
  };
}
