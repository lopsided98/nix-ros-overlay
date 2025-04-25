
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-msgs";
  version = "4.6.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_msgs/4.6.0-1.tar.gz";
    name = "4.6.0-1.tar.gz";
    sha256 = "736c71e6dfc7c55b40887fac54cb058073b41d8194ae5369a4a5b55cd5f7045b";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A package that contains ROS message corresponding to microstrain message types.";
    license = with lib.licenses; [ mit ];
  };
}
