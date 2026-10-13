
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-drone-msgs, tobas-mission-msgs, tobas-msgs, tobas-node, tobas-real-common, tobas-real-msgs, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ros-interface";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ros_interface/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "9c1bf74755325a447bb600fd4433877bdc74982e6bd2707c71b921662a679232";
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
