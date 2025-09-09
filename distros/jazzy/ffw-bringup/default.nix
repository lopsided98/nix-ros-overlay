
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-jazzy-ffw-bringup";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_bringup/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "ae3aedc2d288eebb443c6e32444d71054b1cafd41f20f57ad0600d7643737a76";
  };

  buildType = "ament_python";

  meta = {
    description = "ROS 2 launch scripts for starting the FFW";
    license = with lib.licenses; [ asl20 ];
  };
}
