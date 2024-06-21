
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, beluga, beluga-ros, catkin, diagnostic-updater, dynamic-reconfigure, message-filters, nodelet, roscpp, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-beluga-amcl";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/noetic/beluga_amcl/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "e70779418006ea397ab2719e5bcfe7d51a38141e0aba0f8db6e5fa7e2772985b";
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
