
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-swri-rospy";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_rospy/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "39ce047e970b758bda0b10f3578939678a1925d43394b5ddaa07f20853cc9e19";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ rospy std-msgs std-srvs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "This package provides added functionality on top of rospy, including a
  single-threaded callback queue.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
