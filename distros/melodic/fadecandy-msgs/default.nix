
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-fadecandy-msgs";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/iron-ox/fadecandy_ros-release/archive/release/melodic/fadecandy_msgs/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "0a3d7a6220a9fcfecdf31ce7463934bc8515a1bc4fc307dc811369d9e76b3a84";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS msgs for fadecandy LED controllers'';
    license = with lib.licenses; [ asl20 ];
  };
}
