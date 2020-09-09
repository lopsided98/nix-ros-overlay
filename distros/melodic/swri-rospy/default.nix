
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-swri-rospy";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_rospy/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "a10b6b6ff593836610ee0115138b4daf5b67654975b7a1fe9ab42c956eb54d30";
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
