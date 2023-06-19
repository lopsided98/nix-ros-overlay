
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-khi-robot-msgs";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/khi_robot_msgs/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "f01cac81b5aead5ecef09e15eda893e4b2cde18128715bc78ac4b5824924d708";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains KHI ROS robot msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
