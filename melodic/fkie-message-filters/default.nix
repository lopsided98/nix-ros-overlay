
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, catkin, tf2-ros, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-fkie-message-filters";
  version = "1.0.0";

  src = fetchurl {
    url = "https://github.com/fkie-release/message_filters-release/archive/release/melodic/fkie_message_filters/1.0.0-0.tar.gz";
    name = "1.0.0-0.tar.gz";
    sha256 = "938b5bff6f2fb9ec9e2fe36b383f0b81828c5147f0870cda2650b2cc863e2652";
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
