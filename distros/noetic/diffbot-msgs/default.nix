
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-diffbot-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-mobile-robots-release/diffbot-release/archive/release/noetic/diffbot_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c6404745cd18b1c665f906125c24f00445e66a7f8a5934841e99185d03bd3823";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diffbot_msgs package'';
    license = with lib.licenses; [ "BSDv3" ];
  };
}
