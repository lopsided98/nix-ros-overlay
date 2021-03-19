
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, led-msgs, message-generation, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ws281x";
  version = "0.0.9-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/ros_led-release/archive/release/melodic/ws281x/0.0.9-1.tar.gz";
    name = "0.0.9-1.tar.gz";
    sha256 = "cff689524aa1cdf1338233bd1c47de60be9242fa3f7aeb1a634c78b52ffa7523";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ led-msgs message-generation roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for rpi_ws281x LED strip driver'';
    license = with lib.licenses; [ mit ];
  };
}
