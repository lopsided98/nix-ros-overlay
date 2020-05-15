
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-swri-rospy";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_rospy/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "2bb2d4091898d070ddfc37b36dda29fd6697a9e1ef3d4051a67a053018ec2852";
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
