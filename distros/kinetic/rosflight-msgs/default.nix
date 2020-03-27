
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosflight-msgs";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_msgs/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "6d5830b7aac38099b27c8624b510b3874ab2f641f58fea539b2db3353402a7a6";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message and service definitions for the ROSflight ROS stack'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
