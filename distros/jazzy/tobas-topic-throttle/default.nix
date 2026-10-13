
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-msgs-adapter, tobas-node, tobas-real-common, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-topic-throttle";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_topic_throttle/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "6b11cf42f7d479a73879292798cca3ae8b64ddeb54662f5eb02317fa6d9aa7b1";
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
