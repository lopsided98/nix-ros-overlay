
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-moveit-resources-fanuc-description";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/humble/moveit_resources_fanuc_description/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "3698f8f92f11baf94e2b0e05f9d51ca270d8f699712228e937a77814597ab1c2";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fanuc Resources used for MoveIt testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
