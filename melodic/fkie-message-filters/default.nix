
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, catkin, tf2-ros, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-fkie-message-filters";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/message_filters-release/archive/release/melodic/fkie_message_filters/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f74c85e13e3cb79ccc878ea661f148342a3b408ddae95d2d723fa072177f03b4";
  };

  buildType = "catkin";
  buildInputs = [ image-transport sensor-msgs roscpp tf2-ros ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ image-transport sensor-msgs roscpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Improved ROS message filters'';
    license = with lib.licenses; [ asl20 ];
  };
}
