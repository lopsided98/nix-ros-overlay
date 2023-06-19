
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-publisher, message-generation, message-runtime, rosbridge-server, rospy, rostest, roswww, rviz, rwt-utils-3rdparty, std-srvs, web-video-server }:
buildRosPackage {
  pname = "ros-melodic-rwt-image-view";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/rwt_image_view/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "908ca9833f9e8561523ecdc8c6f5f499a3c8fef109f7aae9863679537ac2a811";
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
