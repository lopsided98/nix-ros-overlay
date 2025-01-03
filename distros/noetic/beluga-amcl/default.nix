
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, beluga, beluga-ros, catkin, diagnostic-updater, dynamic-reconfigure, message-filters, nodelet, roscpp, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-beluga-amcl";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/beluga-release/archive/release/noetic/beluga_amcl/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "65f49b5058504bbaf4e3ae841733de267e1a7fd418073ce49a6028d3be336582";
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
