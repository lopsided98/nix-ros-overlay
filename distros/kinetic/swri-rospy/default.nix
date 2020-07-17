
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-swri-rospy";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_rospy/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "1fafcfafd33e57f47195e6cad70ce58885e07a3c6d86f0874013d0df3c1d0e72";
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
