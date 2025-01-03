
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry2, kdl-parser, robot-state-publisher, ros-core, rosbag2, urdf }:
buildRosPackage {
  pname = "ros-jazzy-ros-base";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/jazzy/ros_base/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "c0fc7fc8e09a34f8672f3337c6849c815a221cb231285a37d45bb13a4f304b36";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry2 kdl-parser robot-state-publisher ros-core rosbag2 urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package which extends 'ros_core' and includes other basic functionalities like tf2 and urdf.";
    license = with lib.licenses; [ asl20 ];
  };
}
