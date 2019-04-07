
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosjava-build-tools, catkin, rosjava-bootstrap }:
buildRosPackage {
  pname = "ros-kinetic-zeroconf-jmdns-suite";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/rosjava-release/zeroconf_jmdns_suite-release/archive/release/kinetic/zeroconf_jmdns_suite/0.3.1-0.tar.gz;
    sha256 = "d7df46549709f4a0ef815ce127cc2dee8a7de0baf24011d4dade9e68ce7206e4";
  };

  buildInputs = [ rosjava-build-tools rosjava-bootstrap ];
  propagatedBuildInputs = [ rosjava-build-tools rosjava-bootstrap ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An implementation of zeroconf in pure java.'';
    #license = lib.licenses.Apache 2.0;
  };
}
