
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-msgs-adapter, tobas-node, tobas-real-common, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-topic-throttle";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_topic_throttle/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "3942a1cab1a1c603482dcbd68166b048818c75bbae74c82458d54a526291c459";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-msgs-adapter tobas-node tobas-real-common tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that republishes topics at a limited rate.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
