
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, pkg-config, rosbash }:
buildRosPackage {
  pname = "ros-kinetic-tracetools";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/boschresearch/ros1-tracetools-release/archive/release/kinetic/tracetools/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "59ed304f0ac9078e5b0875444b5594170921f29d35ba304a7f60f17eadd54f57";
  };

  buildType = "catkin";
  buildInputs = [ boost ];
  checkInputs = [ rosbash ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Wrapper interface for tracing libraries'';
    license = with lib.licenses; [ "APLv2" ];
  };
}
