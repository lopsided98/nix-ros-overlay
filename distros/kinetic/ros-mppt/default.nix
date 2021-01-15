
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ros-mppt";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/AaronPB/ros_mppt-release/archive/release/kinetic/ros_mppt/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "ffe6fce6220f2f7d8574202edd6235916d79d60862b1b509ba9ac1bcd2176de9";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MPPT message sender package'';
    license = with lib.licenses; [ gpl3 ];
  };
}
