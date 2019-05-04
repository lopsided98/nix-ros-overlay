
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rocon-app-manager-msgs, gateway-msgs, uuid-msgs, message-generation, message-runtime, std-msgs, rocon-std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-concert-msgs";
  version = "0.9.0-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/kinetic/concert_msgs/0.9.0-1.tar.gz;
    sha256 = "5f4d45afbfaecbe8322955b7007b125fba4eda3eb3541f51cb7376c7567fd68b";
  };

  buildInputs = [ gateway-msgs rocon-app-manager-msgs uuid-msgs message-generation std-msgs rocon-std-msgs ];
  propagatedBuildInputs = [ gateway-msgs rocon-app-manager-msgs uuid-msgs message-runtime std-msgs rocon-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Shared communication types for the concert framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
