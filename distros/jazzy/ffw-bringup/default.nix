
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-jazzy-ffw-bringup";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_bringup/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "76ea99bad7333a1bcbe05e69ff3f380cb2e849216532da56631f9e1263467d6c";
  };

  buildType = "ament_python";

  meta = {
    description = "ROS 2 launch scripts for starting the FFW";
    license = with lib.licenses; [ asl20 ];
  };
}
