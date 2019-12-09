
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, std-msgs, catkin, rocon-app-manager-msgs, rocon-std-msgs, gateway-msgs, message-runtime, uuid-msgs }:
buildRosPackage {
  pname = "ros-kinetic-concert-msgs";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/kinetic/concert_msgs/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "5f4d45afbfaecbe8322955b7007b125fba4eda3eb3541f51cb7376c7567fd68b";
  };

  buildType = "catkin";
  buildInputs = [ gateway-msgs std-msgs rocon-app-manager-msgs rocon-std-msgs message-generation uuid-msgs ];
  propagatedBuildInputs = [ gateway-msgs std-msgs rocon-app-manager-msgs rocon-std-msgs message-runtime uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Shared communication types for the concert framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
