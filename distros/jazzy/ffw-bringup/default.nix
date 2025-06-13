
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl,  }:
buildRosPackage {
  pname = "ros-jazzy-ffw-bringup";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ai_worker-release/archive/release/jazzy/ffw_bringup/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "0ed7bfd95cf02bd8cc7fe3cc66ef3644690acedbc184b72c44ab8a4087f96179";
  };

  buildType = "ament_python";

  meta = {
    description = "ROS 2 launch scripts for starting the FFW";
    license = with lib.licenses; [ asl20 ];
  };
}
