
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, beluga, beluga-ros, catkin, diagnostic-updater, dynamic-reconfigure, message-filters, nodelet, roscpp, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-beluga-amcl";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/noetic/beluga_amcl/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "f31d3c1016d0516e19cce43a3e2d6fdcf2c12f20bb66ba4466a5620c6f0367bb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ beluga beluga-ros diagnostic-updater dynamic-reconfigure message-filters nodelet roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "An AMCL node implementation for ROS2 using Beluga.";
    license = with lib.licenses; [ asl20 ];
  };
}
