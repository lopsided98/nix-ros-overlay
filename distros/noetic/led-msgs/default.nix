
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-led-msgs";
  version = "0.0.11-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/ros_led-release/archive/release/noetic/led_msgs/0.0.11-1.tar.gz";
    name = "0.0.11-1.tar.gz";
    sha256 = "214072ab918d642a84d04b0e07b0b70e8b41208f2dac55c6bb2dc1cff10d1178";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for LEDs and LED strips'';
    license = with lib.licenses; [ mit ];
  };
}
