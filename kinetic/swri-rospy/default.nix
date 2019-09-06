
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, std-srvs, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-swri-rospy";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_rospy/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "93858081728704d2de8048913bb9fd8bab80acfbd099779a00bce583749a5000";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ std-msgs std-srvs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides added functionaliy on top of rospy, including a
  single-threaded callback queue.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
