
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-transport, roscpp, rosunit, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-fkie-message-filters";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/message_filters-release/archive/release/noetic/fkie_message_filters/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "e358366085f0edd74e73c142561ace1d325542b13bc098fe7a68bdc4f1b43407";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ image-transport roscpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Improved ROS message filters'';
    license = with lib.licenses; [ asl20 ];
  };
}
