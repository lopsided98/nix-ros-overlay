
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-publisher, message-generation, message-runtime, rosbridge-server, roslaunch, rospy, rostest, roswww, rviz, rwt-utils-3rdparty, std-srvs, web-video-server }:
buildRosPackage {
  pname = "ros-noetic-rwt-image-view";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/noetic/rwt_image_view/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "57018618ecdcc7c1ec6b51823a7d0b1aa28260aa6f051f84cb09d41da0e0556a";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ image-publisher roslaunch rostest rviz ];
  propagatedBuildInputs = [ message-runtime rosbridge-server rospy roswww rwt-utils-3rdparty std-srvs web-video-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rwt_image_view package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
