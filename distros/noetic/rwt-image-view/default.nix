
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-publisher, message-generation, message-runtime, rosbridge-server, rospy, rostest, roswww, rviz, rwt-utils-3rdparty, std-srvs, web-video-server }:
buildRosPackage {
  pname = "ros-noetic-rwt-image-view";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/noetic/rwt_image_view/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "f1af2a9ea9b22d1bb9f9541f73ce19e714d82d6c0a262d2d13d752c1f4184ab4";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ image-publisher rostest rviz ];
  propagatedBuildInputs = [ message-runtime rosbridge-server rospy roswww rwt-utils-3rdparty std-srvs web-video-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rwt_image_view package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
