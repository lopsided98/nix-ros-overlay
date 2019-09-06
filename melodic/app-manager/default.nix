
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rospack, catkin, message-generation, rosgraph, message-runtime, rospy, roslaunch, rosunit }:
buildRosPackage {
  pname = "ros-melodic-app-manager";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/app_manager-release/archive/release/melodic/app_manager/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "1b206bd525d456027f4dcf75e78671fe6cbae7b78ebacc3707eb1d611636452c";
  };

  buildType = "catkin";
  buildInputs = [ message-generation rosgraph rospy roslaunch rosunit ];
  propagatedBuildInputs = [ std-srvs rospack rosgraph message-runtime rospy roslaunch rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''app_manager'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
