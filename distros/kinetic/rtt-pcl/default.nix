
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pcl, rtt }:
buildRosPackage {
  pname = "ros-kinetic-rtt-pcl";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_pcl-release/archive/release/kinetic/rtt_pcl/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "036748c82878a644de891472964f2f5593cd0096017b3a5516d296219911d5d3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pcl rtt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Orocos RTT typekit plugin for PCL types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
