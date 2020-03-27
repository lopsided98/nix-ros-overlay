
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosflight-msgs";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/melodic/rosflight_msgs/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "bd8462701427e321d59c399e8f0038390ef6f843cf470313afd05de6ecabff8a";
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
