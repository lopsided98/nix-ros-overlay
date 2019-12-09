
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, tuw-geometry-msgs, geometry-msgs, std-msgs, tf, catkin, rospy, roscpp, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tuw-nav-msgs";
  version = "0.0.11";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/kinetic/tuw_nav_msgs/0.0.11-0.tar.gz";
    name = "0.0.11-0.tar.gz";
    sha256 = "47dfddda81934ed6721d21653f0defed39ca80085357918bffe691239b1b8b08";
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
