
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, diagnostic-msgs, rosbridge-server, rostest, roswww, rwt-plot, rwt-utils-3rdparty }:
buildRosPackage {
  pname = "ros-melodic-rwt-robot-monitor";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/rwt_robot_monitor/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "81c369884ff754391ada9781be9003b4e702fa3d5e20815230e5a34098c4302e";
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
