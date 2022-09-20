
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-led-msgs";
  version = "0.0.11-r1";

  src = fetchurl {
    url = "https://github.com/CopterExpress/ros_led-release/archive/release/melodic/led_msgs/0.0.11-1.tar.gz";
    name = "0.0.11-1.tar.gz";
    sha256 = "fb8f221ede9c60a438c079056599b6c0a106d0989462fd766c2d29bd241dcab8";
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
