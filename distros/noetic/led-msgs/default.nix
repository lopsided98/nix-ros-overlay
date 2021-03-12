
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-led-msgs";
  version = "0.0.9-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/ros_led-release/archive/release/noetic/led_msgs/0.0.9-1.tar.gz";
    name = "0.0.9-1.tar.gz";
    sha256 = "b439cf190c5c582ef99e48cc946c9997f994e4afc97c19a0c89124cc497c1062";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for LEDs and LED strips'';
    license = with lib.licenses; [ mit ];
  };
}
