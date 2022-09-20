
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-publisher, rosbridge-server, rostest, roswww, rviz, rwt-utils-3rdparty, web-video-server }:
buildRosPackage {
  pname = "ros-noetic-rwt-steer";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/noetic/rwt_steer/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "ef01c5f7b4513522cfaaa9a29a46804879659b020c16643a624e9b6a254bd751";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ image-publisher rostest rviz ];
  propagatedBuildInputs = [ rosbridge-server roswww rwt-utils-3rdparty web-video-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rwt_steer package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
