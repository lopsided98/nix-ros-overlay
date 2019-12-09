
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosidl-default-runtime, ament-cmake, rosidl-default-generators, action-msgs }:
buildRosPackage {
  pname = "ros-eloquent-move-base-msgs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation_msgs-release/archive/release/eloquent/move_base_msgs/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "9894a58d51e1eb93a9155afb37fb2478d8f9c219574fd7296573986247f633cb";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators geometry-msgs action-msgs ];
  propagatedBuildInputs = [ rosidl-default-runtime geometry-msgs action-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Holds the action description and relevant messages for the move_base package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
