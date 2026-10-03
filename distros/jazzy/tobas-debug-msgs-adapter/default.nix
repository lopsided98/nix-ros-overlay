
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs, tobas-eigen-msgs-adapter, tobas-kdl-msgs-adapter }:
buildRosPackage {
  pname = "ros-jazzy-tobas-debug-msgs-adapter";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_debug_msgs_adapter/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "c1a00bd91a35758a22b685d7455ca716bf6da7c7c98d1457eef29e227c7b732e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-debug-msgs tobas-eigen-msgs-adapter tobas-kdl-msgs-adapter ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 type adapters for Tobas controller and observer debug messages.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
