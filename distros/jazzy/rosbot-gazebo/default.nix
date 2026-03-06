
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-gazebo";
  version = "0.18.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_gazebo/0.18.6-1.tar.gz";
    name = "0.18.6-1.tar.gz";
    sha256 = "6e8dd6bfaf24154cadc36f8c9d876234e49e038d3b1e7b222d6eaabc697433ce";
  };

  buildType = "ament_python";

  meta = {
    description = "Gazebo simulation for ROSbot Series";
    license = with lib.licenses; [ asl20 ];
  };
}
