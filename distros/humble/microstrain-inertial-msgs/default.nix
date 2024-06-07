
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-humble-microstrain-inertial-msgs";
  version = "4.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/humble/microstrain_inertial_msgs/4.3.0-1.tar.gz";
    name = "4.3.0-1.tar.gz";
    sha256 = "c41d5bf8f5729d8ac8bd26f1a8c0723f08a9853e03d3f0aaab3202a334abda0d";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs std-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "A package that contains ROS message corresponding to microstrain message types.";
    license = with lib.licenses; [ mit ];
  };
}
