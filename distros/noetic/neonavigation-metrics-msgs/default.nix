
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-neonavigation-metrics-msgs";
  version = "0.14.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/noetic/neonavigation_metrics_msgs/0.14.0-1.tar.gz";
    name = "0.14.0-1.tar.gz";
    sha256 = "129c6f8c959a270d233e3fc3c978bb2db02ec14e0b7b873ed070d6d51645d61e";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metrics message definitions for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
