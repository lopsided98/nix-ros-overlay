
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-swri-rospy";
  version = "2.14.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_rospy/2.14.2-1.tar.gz";
    name = "2.14.2-1.tar.gz";
    sha256 = "c9643aede4097f142fc4cbb78d86ee9d3292014dba8b2cf96e41ab38b1b12ff3";
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
