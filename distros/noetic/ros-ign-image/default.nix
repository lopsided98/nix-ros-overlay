
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ignition, image-transport, ros-ign-bridge, roscpp, rostest, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-ros-ign-image";
  version = "0.111.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_ign-release/archive/release/noetic/ros_ign_image/0.111.2-1.tar.gz";
    name = "0.111.2-1.tar.gz";
    sha256 = "92e81101e840f276e08848f3d9c67ae6a3af0de04cec8318539de71966280446";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ ignition.msgs5 ignition.transport8 image-transport ros-ign-bridge roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Image utilities for Ignition simulation with ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
