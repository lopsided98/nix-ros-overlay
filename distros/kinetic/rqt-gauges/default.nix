
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, roscpp, roslint, rqt-gui, rqt-gui-cpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rqt-gauges";
  version = "1.0.7";

  src = fetchurl {
    url = "https://github.com/UTNuclearRoboticsPublic/gauges-release/archive/release/kinetic/rqt_gauges/1.0.7-0.tar.gz";
    name = "1.0.7-0.tar.gz";
    sha256 = "157858ffe398bfda5b9b69bd87466e0a7f1c4987d3c915e318eaf740217e7f7e";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ pluginlib roscpp rqt-gui rqt-gui-cpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_gauges package'';
    license = with lib.licenses; [ "see License.txt" ];
  };
}
