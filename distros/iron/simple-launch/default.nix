
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-iron-simple-launch";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_launch-release/archive/release/iron/simple_launch/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "ef2aff17cd3d266cb1fbe998ae6265785b11a386b4b10dff998865077ed52ec2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros xacro ];
  nativeBuildInputs = [ ament-cmake-python ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
