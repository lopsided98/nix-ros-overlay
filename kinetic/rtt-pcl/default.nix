
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl, rtt }:
buildRosPackage {
  pname = "ros-kinetic-rtt-pcl";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_pcl-release/archive/release/kinetic/rtt_pcl/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "fd4698f20a681d6d37a6374b8c064046d2f6f07b898d146a1113c272f3cc0a84";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pcl rtt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Orocos RTT typekit plugin for PCL types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
