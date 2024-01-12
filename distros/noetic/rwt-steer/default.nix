
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-publisher, rosbridge-server, roslaunch, rostest, roswww, rviz, rwt-utils-3rdparty, web-video-server }:
buildRosPackage {
  pname = "ros-noetic-rwt-steer";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/noetic/rwt_steer/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "6d1d0122de69c603301a408466b90729657fc6947a42360d5d01c5e7d8bb87d3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ image-publisher roslaunch rostest rviz ];
  propagatedBuildInputs = [ rosbridge-server roswww rwt-utils-3rdparty web-video-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rwt_steer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
