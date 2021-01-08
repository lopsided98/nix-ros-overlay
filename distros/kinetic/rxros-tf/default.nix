
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rxros, tf }:
buildRosPackage {
  pname = "ros-kinetic-rxros-tf";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/rosin-project/rxros-release/archive/release/kinetic/rxros_tf/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "45fb10f721b971baccaac8147f8f78c0e6b19759a18a9a63c381797f99ed585e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rxros tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extensions to RxROS for working with TF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
