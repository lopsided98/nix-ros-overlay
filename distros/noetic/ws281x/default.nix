
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, led-msgs, message-generation, ros-environment, roscpp }:
buildRosPackage {
  pname = "ros-noetic-ws281x";
  version = "0.0.11-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/ros_led-release/archive/release/noetic/ws281x/0.0.11-1.tar.gz";
    name = "0.0.11-1.tar.gz";
    sha256 = "0071b29514f6c0f6ccc254eda7e8ccf2e5f853124cab97bf156f92bcd07a6318";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-environment ];
  propagatedBuildInputs = [ led-msgs message-generation roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS node for rpi_ws281x LED strip driver'';
    license = with lib.licenses; [ mit bsdOriginal ];
  };
}
