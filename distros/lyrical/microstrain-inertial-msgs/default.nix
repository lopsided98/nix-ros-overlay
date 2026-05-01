
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-microstrain-inertial-msgs";
  version = "4.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/microstrain_inertial-release/archive/release/lyrical/microstrain_inertial_msgs/4.8.0-3.tar.gz";
    name = "4.8.0-3.tar.gz";
    sha256 = "06466cdfaee614b92ee1ecd4a93770d429084c2352e61d0a66ab35b7802a7540";
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
