
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-msgs";
  version = "0.21.3-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_msgs/0.21.3-4.tar.gz";
    name = "0.21.3-4.tar.gz";
    sha256 = "52c8a6ab184fbccfb0929fbdad4c1e24ac88fbc00f0894961274c9ec77caf256";
  };

  buildType = "catkin";
  buildInputs = [ catkin genmsg message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin genmsg ];

  meta = {
    description = ''RTAB-Map's msgs package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
