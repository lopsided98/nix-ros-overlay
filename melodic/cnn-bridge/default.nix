
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cnn-bridge";
  version = "0.8.4-r4";

  src = fetchurl {
    url = https://github.com/wew84/cnn_bridge-release/archive/release/melodic/cnn_bridge/0.8.4-4.tar.gz;
    sha256 = "b4ab64c311dabba4a3ea3c43aa6909af251a42e6bfa479f426d2a79e613e6596";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs rospy ];
  propagatedBuildInputs = [ message-generation message-runtime rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cnn_bridge package take freeze graphs and publishes them as ROS messages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
