
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosjava-bootstrap, rosjava-build-tools }:
buildRosPackage {
  pname = "ros-kinetic-zeroconf-jmdns-suite";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/rosjava-release/zeroconf_jmdns_suite-release/archive/release/kinetic/zeroconf_jmdns_suite/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "d7df46549709f4a0ef815ce127cc2dee8a7de0baf24011d4dade9e68ce7206e4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosjava-bootstrap rosjava-build-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An implementation of zeroconf in pure java.'';
    license = with lib.licenses; [ asl20 ];
  };
}
