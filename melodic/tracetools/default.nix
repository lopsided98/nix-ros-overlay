
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, boost, pkg-config, rosbash }:
buildRosPackage {
  pname = "ros-melodic-tracetools";
  version = "0.2.1-r1";

  src = fetchurl {
    url = https://github.com/bosch-robotics-cr/tracetools-release/archive/release/melodic/tracetools/0.2.1-1.tar.gz;
    sha256 = "1c5114e1acce416cfb16dfca419508fd9dfcfd682ffdd63eafbe7a609d5f14f7";
  };

  buildInputs = [ boost ];
  checkInputs = [ rosbash ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Wrapper interface for tracing libraries'';
    #license = lib.licenses.APLv2;
  };
}
