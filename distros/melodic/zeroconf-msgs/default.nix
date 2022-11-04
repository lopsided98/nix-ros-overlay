
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-zeroconf-msgs";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/zeroconf_msgs-release/archive/release/melodic/zeroconf_msgs/0.2.1-0.tar.gz";
    name = "0.2.1-0.tar.gz";
    sha256 = "2e5d7e5adc4153b4b1f9e166a13cd4ed2fdcb0944d966dfaaf6811e63b89cdef";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''General ros communications used by the various zeroconf implementations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
