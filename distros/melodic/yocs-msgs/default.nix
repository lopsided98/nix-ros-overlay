
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-yocs-msgs";
  version = "0.7.0";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yocs_msgs-release/archive/release/melodic/yocs_msgs/0.7.0-0.tar.gz";
    name = "0.7.0-0.tar.gz";
    sha256 = "92aa5df09147dc1819de1d4415efe58d267744ca6cbf9ffe4dbb742d1713cdcc";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs dynamic-reconfigure geometry-msgs message-runtime std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Yujin's Open Control System messages, services and actions'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
