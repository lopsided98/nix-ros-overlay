
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-std-capabilities";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/std_capabilities-release/archive/release/kinetic/std_capabilities/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "d8277854e369322931b631d56800492becc7c1e56ce707f2e1124a590cfa7349";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains standard capability interfaces, which describe common robot capabilities in terms of ROS concepts such as topics, services, actions, and parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
