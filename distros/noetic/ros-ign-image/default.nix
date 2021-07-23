
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ignition, image-transport, ros-ign-bridge, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-ros-ign-image";
  version = "0.111.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_ign-release/archive/release/noetic/ros_ign_image/0.111.1-2.tar.gz";
    name = "0.111.1-2.tar.gz";
    sha256 = "d03bede505b6f6e15a966cec96d398f3b95e9a14c02890b96dbc89edd14d6786";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ ignition.msgs5 ignition.transport8 image-transport ros-ign-bridge roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Image utilities for Ignition simulation with ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
