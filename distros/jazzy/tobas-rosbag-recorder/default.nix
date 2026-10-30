
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosbag2-cpp, std-srvs, tobas-command-msgs-adapter, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-linux, tobas-msgs-adapter, tobas-node, tobas-path-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rosbag-recorder";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rosbag_recorder/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "6c6a460efdb97089c9ff77159bd23ca314048dc7354f1b885b160b739b09aefb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rosbag2-cpp std-srvs tobas-command-msgs-adapter tobas-debug-msgs-adapter tobas-drone-msgs-adapter tobas-linux tobas-msgs-adapter tobas-node tobas-path-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Configurable recorder for Tobas command, sensor, model, debug, and state topics.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
