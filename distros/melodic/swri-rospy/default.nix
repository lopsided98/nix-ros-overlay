
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-swri-rospy";
  version = "2.13.7-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_rospy/2.13.7-1.tar.gz";
    name = "2.13.7-1.tar.gz";
    sha256 = "3747ca0c3dc30aa14e24acad37fd191728230cf7fe353a74ec5621707752778b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''This package provides added functionality on top of rospy, including a
  single-threaded callback queue.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
