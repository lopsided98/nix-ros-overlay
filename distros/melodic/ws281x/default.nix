
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, led-msgs, message-generation, ros-environment, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ws281x";
  version = "0.0.11-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/ros_led-release/archive/release/melodic/ws281x/0.0.11-1.tar.gz";
    name = "0.0.11-1.tar.gz";
    sha256 = "67ddd33a54d28457380dddec2ef26b102389b174e1f8a5efa16ab85cea1ce310";
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
