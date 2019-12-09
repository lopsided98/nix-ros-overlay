
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, std-srvs, catkin, rospy }:
buildRosPackage {
  pname = "ros-kinetic-swri-rospy";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_rospy/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "327c29f08169034573724fdbb65b409f41700df6ba8eca39610b518364b7539f";
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
