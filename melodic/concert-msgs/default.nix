
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, std-msgs, catkin, rocon-app-manager-msgs, rocon-std-msgs, gateway-msgs, message-runtime, uuid-msgs }:
buildRosPackage {
  pname = "ros-melodic-concert-msgs";
  version = "0.9.0";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/melodic/concert_msgs/0.9.0-0.tar.gz";
    name = "0.9.0-0.tar.gz";
    sha256 = "2b90b553b2fc831b783dda1382fddbd81c507f33988189768ac44fc0106afac2";
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
