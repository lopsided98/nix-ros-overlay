
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, image-publisher, map-server, move-base-msgs, rosbridge-server, roscpp, roslaunch, rostest, roswww, rviz, rwt-utils-3rdparty, tf, web-video-server }:
buildRosPackage {
  pname = "ros-noetic-rwt-nav";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/noetic/rwt_nav/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "ed6ab6e68f6b6e30ac19b362575354725ea6a8e3a952b561f4aab71f8a61bf00";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ image-publisher map-server move-base-msgs roslaunch rostest rviz ];
  propagatedBuildInputs = [ geometry-msgs rosbridge-server roscpp roswww rwt-utils-3rdparty tf web-video-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rwt_nav package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
