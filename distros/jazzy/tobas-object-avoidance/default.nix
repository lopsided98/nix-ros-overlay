
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, octomap, octomap-msgs, tobas-constants, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-object-avoidance";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_object_avoidance/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "eb2543d6b8c3f5384b359107615e0d77b76bac8f3a554ab61cc624ef14ee8c47";
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
