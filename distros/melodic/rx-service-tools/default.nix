
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python, pythonPackages, roslib, rospy }:
buildRosPackage {
  pname = "ros-melodic-rx-service-tools";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rx_service_tools-release/archive/release/melodic/rx_service_tools/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "68d0c57e7a8de53a6bfd718d6bbfef0871720a3b62113eda08506b6c7db6539b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python pythonPackages.pyyaml pythonPackages.wxPython roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical tools to interact with ROS services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
