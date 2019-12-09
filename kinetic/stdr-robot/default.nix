
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, nav-msgs, actionlib, tf, catkin, stdr-server, nodelet, roscpp, stdr-parser, stdr-msgs }:
buildRosPackage {
  pname = "ros-kinetic-stdr-robot";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/stdr-simulator-ros-pkg/stdr_simulator-release/archive/release/kinetic/stdr_robot/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "8f462e093caac6e63e5cfe3a6985a9863b9106bf3ef4b23a85e48089b588ff77";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs nav-msgs actionlib tf nodelet roscpp stdr-parser stdr-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs nav-msgs tf actionlib stdr-server nodelet roscpp stdr-parser stdr-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides robot, sensor implementation, using nodelets for stdr_server to load them.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
