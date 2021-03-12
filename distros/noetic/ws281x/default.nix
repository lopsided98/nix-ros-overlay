
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, led-msgs, message-generation, roscpp }:
buildRosPackage {
  pname = "ros-noetic-ws281x";
  version = "0.0.9-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/ros_led-release/archive/release/noetic/ws281x/0.0.9-1.tar.gz";
    name = "0.0.9-1.tar.gz";
    sha256 = "8186be07107e1a14a5f6a482e01ac32a26dcda22bdb93beb6c90b0ce95088c5e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ led-msgs message-generation roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for rpi_ws281x LED strip driver'';
    license = with lib.licenses; [ mit ];
  };
}
