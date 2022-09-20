
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, diagnostic-msgs, rosbridge-server, rostest, roswww, rwt-plot, rwt-utils-3rdparty }:
buildRosPackage {
  pname = "ros-melodic-rwt-robot-monitor";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/rwt_robot_monitor/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "b78fe02256cf1b24be648221fa89df0e81e61f19a2e37d34ee608650be8be79d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ diagnostic-aggregator rostest ];
  propagatedBuildInputs = [ diagnostic-msgs rosbridge-server roswww rwt-plot rwt-utils-3rdparty ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rwt_robot_monitor package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
