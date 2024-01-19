
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, scaled-joint-trajectory-controller, speed-scaling-interface, speed-scaling-state-controller }:
buildRosPackage {
  pname = "ros-noetic-scaled-controllers";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_scaled_controllers-release/archive/release/noetic/scaled_controllers/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "1add0c6dc6c3eb45c4479cd4bc0ee0abf9c73fb7a0e6a2091abf1a046deb1e6b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ scaled-joint-trajectory-controller speed-scaling-interface speed-scaling-state-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''scaled controllers metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
