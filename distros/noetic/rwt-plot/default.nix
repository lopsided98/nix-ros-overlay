
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rosbridge-server, roslaunch, rospy, rostest, roswww, rwt-utils-3rdparty, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-rwt-plot";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/noetic/rwt_plot/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "12bd3e24043781e2d4d0b90db763ce4a2cc34ba897d743b51594916ed867b72b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ geometry-msgs rosbridge-server rospy roswww rwt-utils-3rdparty std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rwt_plot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
