
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-ros-msgs";
  version = "2.10.3-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_ros_msgs/2.10.3-1.tar.gz";
    name = "2.10.3-1.tar.gz";
    sha256 = "c67a343d4aa0326c1a3211d2225c6c95104c78057eb38e9a3ea8cebf91756aa8";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs vision-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Package to keep interface independent of the driver";
    license = with lib.licenses; [ mit ];
  };
}
