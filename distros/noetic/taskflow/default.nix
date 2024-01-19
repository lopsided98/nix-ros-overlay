
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-noetic-taskflow";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/taskflow-release/archive/release/noetic/taskflow/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "164a29de5d89110cdd10a9dcffcfa8791e2fc3b58449adcef806b3ee3705ab99";
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
