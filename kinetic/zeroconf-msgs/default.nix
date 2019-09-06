
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-zeroconf-msgs";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/zeroconf_msgs-release/archive/release/kinetic/zeroconf_msgs/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "2cb5de5b8b7320b0b3f931b56368ca120eea3627d6781994373c51d321e6786b";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''General ros communications used by the various zeroconf implementations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
