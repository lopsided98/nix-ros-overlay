
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-debug-msgs, tobas-eigen-msgs-adapter, tobas-kdl-msgs-adapter }:
buildRosPackage {
  pname = "ros-jazzy-tobas-debug-msgs-adapter";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_debug_msgs_adapter/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "be9b8ced116ac004d2ded241de797c136074a25e77e9c4a4071114d0706e9f41";
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
