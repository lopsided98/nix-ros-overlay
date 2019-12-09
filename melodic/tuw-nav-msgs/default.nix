
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, tuw-geometry-msgs, geometry-msgs, std-msgs, tf, catkin, rospy, roscpp, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-tuw-nav-msgs";
  version = "0.0.13";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/melodic/tuw_nav_msgs/0.0.13-0.tar.gz";
    name = "0.0.13-0.tar.gz";
    sha256 = "6dd62f9b473be78c32bafb0b1f9c9410d2ed6f2b87586ce77f51e84f49132c39";
  };

  buildType = "catkin";
  buildInputs = [ tuw-geometry-msgs geometry-msgs std-msgs tf rospy roscpp message-generation nav-msgs ];
  propagatedBuildInputs = [ tuw-geometry-msgs geometry-msgs std-msgs tf rospy roscpp message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_nav_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
