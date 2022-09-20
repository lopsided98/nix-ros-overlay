
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, pkg-config, rosbash }:
buildRosPackage {
  pname = "ros-melodic-tracetools";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/ros1-tracetools-release/archive/release/melodic/tracetools/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "1432003c36ab6c12cd03dc132dba1e8dd87986ae2fbf3bb4537001369bd47fc4";
  };

  buildType = "catkin";
  buildInputs = [ boost catkin pkg-config ];
  checkInputs = [ rosbash ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Wrapper interface for tracing libraries'';
    license = with lib.licenses; [ "APLv2" ];
  };
}
