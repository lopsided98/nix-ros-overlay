
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, pythonPackages, rospy, rostopic }:
buildRosPackage {
  pname = "ros-melodic-generic-throttle";
  version = "0.6.19-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/generic_throttle/0.6.19-1.tar.gz";
    name = "0.6.19-1.tar.gz";
    sha256 = "12fe78d29a029cfb0412a24e6fcd2108096c6b137493c309736f9675ad132c49";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ cv-bridge rospy rostopic ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''This package provides a throttle for ROS topics'';
    license = with lib.licenses; [ asl20 ];
  };
}
