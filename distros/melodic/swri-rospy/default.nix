
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-swri-rospy";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_rospy/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "e319c33b4b05ca2a9bd8d142c54603bbf7cb2b6308f6571ec6f77e5f347bb496";
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
