
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-kinetic-eml";
  version = "1.8.15-r6";

  src = fetchurl {
    url = "https://github.com/ros-gbp/eml-release/archive/release/kinetic/eml/1.8.15-6.tar.gz";
    name = "1.8.15-6.tar.gz";
    sha256 = "6c5835c00492bb87f6fe4e93e036699da219e2db9cfe25b67a5ccc4a0ddb7bf3";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This is an implementation of the EtherCAT master protocol for the PR2
      robot based on the work done at Flanders' Mechatronics Technology Centre.'';
    license = with lib.licenses; [ "Binary Only" ];
  };
}
