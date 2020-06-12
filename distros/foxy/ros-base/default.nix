
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry2, kdl-parser, robot-state-publisher, ros-core, rosbag2, urdf }:
buildRosPackage {
  pname = "ros-foxy-ros-base";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/foxy/ros_base/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "307b0bae688ee0546174a4d142f5cea8a2c4852b6a59a4776d69010303719be6";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ geometry2 kdl-parser robot-state-publisher ros-core rosbag2 urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_core' and includes other basic functionalities like tf2 and urdf.'';
    license = with lib.licenses; [ asl20 ];
  };
}
