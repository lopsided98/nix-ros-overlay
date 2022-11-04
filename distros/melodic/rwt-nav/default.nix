
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, image-publisher, map-server, move-base-msgs, rosbridge-server, roscpp, rostest, roswww, rviz, rwt-utils-3rdparty, tf, web-video-server }:
buildRosPackage {
  pname = "ros-melodic-rwt-nav";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/rwt_nav/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "b923c3c3f2e4c7a35710d91171ec49aa8ca4046ca24969fcac3b35169f389bd0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ image-publisher map-server move-base-msgs rostest rviz ];
  propagatedBuildInputs = [ geometry-msgs rosbridge-server roscpp roswww rwt-utils-3rdparty tf web-video-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rwt_nav package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
