
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, std-srvs, catkin, rospy }:
buildRosPackage {
  pname = "ros-melodic-swri-rospy";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_rospy/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "6b885e06138b8b599b4e3e8a654c2b9e19f390bf890ea8ae3c201df6aeba75a7";
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
