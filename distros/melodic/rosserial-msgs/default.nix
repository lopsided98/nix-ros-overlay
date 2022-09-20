
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-rosserial-msgs";
  version = "0.8.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_msgs/0.8.0-0.tar.gz";
    name = "0.8.0-0.tar.gz";
    sha256 = "8e7997385cc06168097b0d5e56c91155f5a3fea6a28cecbc9ba0d9dc48cad6af";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for automatic topic configuration using rosserial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
