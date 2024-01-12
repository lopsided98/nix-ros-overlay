
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-aggregator, diagnostic-msgs, rosbridge-server, roslaunch, rostest, roswww, rwt-plot, rwt-utils-3rdparty }:
buildRosPackage {
  pname = "ros-noetic-rwt-robot-monitor";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/noetic/rwt_robot_monitor/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "5a1106c4e6733dde501e299c45ba5effe8b091bac0c88a227f31b4d1f27afff6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ diagnostic-aggregator roslaunch rostest ];
  propagatedBuildInputs = [ diagnostic-msgs rosbridge-server roswww rwt-plot rwt-utils-3rdparty ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rwt_robot_monitor package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
