
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, octomap, octomap-msgs, tobas-constants, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-object-avoidance";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_object_avoidance/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "9043f074373fdbd94296aea64a3cc5ee8e7b5b62c7b8b4ed0c8c12ae5db2f72e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ octomap octomap-msgs tobas-constants tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that computes obstacle-avoidance acceleration from an OctoMap using repulsive potential fields.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
