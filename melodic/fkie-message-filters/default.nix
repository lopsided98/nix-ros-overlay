
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rosunit, image-transport, roscpp, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-fkie-message-filters";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/message_filters-release/archive/release/melodic/fkie_message_filters/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "f74c85e13e3cb79ccc878ea661f148342a3b408ddae95d2d723fa072177f03b4";
  };

  buildType = "catkin";
  buildInputs = [ image-transport sensor-msgs tf2-ros roscpp ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ image-transport sensor-msgs tf2-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Improved ROS message filters'';
    license = with lib.licenses; [ asl20 ];
  };
}
