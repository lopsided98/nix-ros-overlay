
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg }:
buildRosPackage {
  pname = "ros-kinetic-genrs";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/adnanademovic/genrs-release/archive/release/kinetic/genrs/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "67c1e8dc2db9aa0c8e2f71e3c337bfc86dbc88bc5d752a854267e0aa9df0192e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rust ROS message and service generators'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
