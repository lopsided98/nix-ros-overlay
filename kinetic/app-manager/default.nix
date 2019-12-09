
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-runtime, rosgraph, catkin, rosunit, rospy, message-generation, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-app-manager";
  version = "1.0.5";

  src = fetchurl {
    url = "https://github.com/ros-gbp/app_manager-release/archive/release/kinetic/app_manager/1.0.5-0.tar.gz";
    name = "1.0.5-0.tar.gz";
    sha256 = "ec22bd2b90873336242132827de6549b9ccf284e2e924ae0e267854e4d982f31";
  };

  buildType = "catkin";
  buildInputs = [ rosgraph rosunit rospy message-generation roslaunch ];
  propagatedBuildInputs = [ message-runtime rosgraph rosunit rospy roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''app_manager'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
