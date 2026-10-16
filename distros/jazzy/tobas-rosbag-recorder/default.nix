
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosbag2-cpp, std-srvs, tobas-command-msgs-adapter, tobas-debug-msgs-adapter, tobas-drone-msgs-adapter, tobas-linux, tobas-msgs-adapter, tobas-node, tobas-path-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rosbag-recorder";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rosbag_recorder/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "1ed96e3ec23b7e67735b1cdb0ae85a5c9968ebafef704259cd8c28cb1e511c43";
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
