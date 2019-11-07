
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, action-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-move-base-msgs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation_msgs-release/archive/release/dashing/move_base_msgs/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "e2bc397e2cda33c49ff54289faf155b646cfed4f57ef94d71ab373c382f2615d";
  };

  buildType = "ament_cmake";
  buildInputs = [ action-msgs rosidl-default-generators geometry-msgs ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Holds the action description and relevant messages for the move_base package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
