
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-msgs-adapter, tobas-node, tobas-real-common, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-topic-throttle";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_topic_throttle/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "16e54a381b85f5732d6941c46884cef66bff4183fab3f6762a9a3b879e3f74a8";
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
