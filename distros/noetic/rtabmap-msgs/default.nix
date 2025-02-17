
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-msgs";
  version = "0.21.10-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_msgs/0.21.10-1.tar.gz";
    name = "0.21.10-1.tar.gz";
    sha256 = "8c04efcf256244e55637adf6e7c65811d6e988ee94fa1d0ca1f47108509fee73";
  };

  buildType = "catkin";
  buildInputs = [ catkin genmsg message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin genmsg ];

  meta = {
    description = "RTAB-Map's msgs package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
