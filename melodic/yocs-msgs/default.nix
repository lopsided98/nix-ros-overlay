
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, actionlib-msgs, catkin, message-generation, message-runtime, dynamic-reconfigure, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-msgs";
  version = "0.7.0";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yocs_msgs-release/archive/release/melodic/yocs_msgs/0.7.0-0.tar.gz;
    sha256 = "92aa5df09147dc1819de1d4415efe58d267744ca6cbf9ffe4dbb742d1713cdcc";
  };

  propagatedBuildInputs = [ std-srvs message-runtime actionlib-msgs dynamic-reconfigure std-msgs geometry-msgs ];
  nativeBuildInputs = [ std-srvs message-generation actionlib-msgs dynamic-reconfigure std-msgs catkin geometry-msgs ];

  meta = {
    description = ''Yujin's Open Control System messages, services and actions'';
    #license = lib.licenses.BSD;
  };
}
