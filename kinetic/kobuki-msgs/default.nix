
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-msgs";
  version = "0.7.0";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/kobuki_msgs-release/archive/release/kinetic/kobuki_msgs/0.7.0-0.tar.gz;
    sha256 = "d30bdabaabe6ae1160886604d498d8cb1b25848b5caa1130c4ee6cccf0e36dcc";
  };

  propagatedBuildInputs = [ std-msgs message-runtime actionlib-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation actionlib-msgs ];

  meta = {
    description = ''<p>
      Kobuki message and service types: custom messages and services for Kobuki packages.
    </p>'';
    #license = lib.licenses.BSD;
  };
}
