
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-swri-rospy";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_rospy/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "03e6fbcfdb0721e2ba1b83a0bccbd3a9a94f95eabcb90e1f6e458227c613df8d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides added functionaliy on top of rospy, including a
  single-threaded callback queue.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
