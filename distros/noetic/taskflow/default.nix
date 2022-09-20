
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-noetic-taskflow";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/taskflow-release/archive/release/noetic/taskflow/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "bdf5cfccf688ea15ba7f65fb48f2e2ead80e9ba5e3df5014f50a2b445edf5d78";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The taskflow package'';
    license = with lib.licenses; [ mit ];
  };
}
