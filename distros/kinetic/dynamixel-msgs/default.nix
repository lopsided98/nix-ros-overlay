
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dynamixel-msgs";
  version = "0.4.1";

  src = fetchurl {
    url = "https://github.com/arebgun/dynamixel_motor-release/archive/release/kinetic/dynamixel_msgs/0.4.1-0.tar.gz";
    name = "0.4.1-0.tar.gz";
    sha256 = "adc3d35f7f4cbae814fe5f38956b64b1753225b579e4474cbd919a169cdbe8cb";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common messages used throughout dynamixel_motor stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
