
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rosgraph, roslaunch, rospack, rospy, rosunit, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-app-manager";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/app_manager-release/archive/release/noetic/app_manager/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "3b17f326c828d6c15dc352cbfd125605b3af0a1c9225e5af50a88f7c4cd9a98a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rosgraph roslaunch rospack rospy rosunit std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''app_manager'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
