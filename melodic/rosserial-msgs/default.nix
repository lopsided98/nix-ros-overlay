
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-rosserial-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_msgs/0.8.0-0.tar.gz;
    sha256 = "8e7997385cc06168097b0d5e56c91155f5a3fea6a28cecbc9ba0d9dc48cad6af";
  };

  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for automatic topic configuration using rosserial.'';
    #license = lib.licenses.BSD;
  };
}
