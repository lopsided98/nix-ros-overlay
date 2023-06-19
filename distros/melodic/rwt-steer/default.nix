
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-publisher, rosbridge-server, rostest, roswww, rviz, rwt-utils-3rdparty, web-video-server }:
buildRosPackage {
  pname = "ros-melodic-rwt-steer";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/rwt_steer/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "27b6ac546a9cacc27ec0734a3a8be26c34e28cec4f871d6060faba2f0a745320";
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
