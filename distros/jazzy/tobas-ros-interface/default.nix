
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-drone-msgs, tobas-mission-msgs, tobas-msgs, tobas-node, tobas-real-common, tobas-real-msgs, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ros-interface";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ros_interface/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "15a93ba8597bc81ca198e4cdaa48bab391f2581550e5139a75e5bdc10375e492";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ std-srvs tobas-drone-msgs tobas-mission-msgs tobas-msgs tobas-node tobas-real-common tobas-real-msgs tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 boundary node that routes Tobas logic topics, services, and actions to external interfaces.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
