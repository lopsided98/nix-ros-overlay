
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-galactic-simple-launch";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_launch-release/archive/release/galactic/simple_launch/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "861fa996367b60ad1c308fb07f439b004ea3458d6ec06c18d43a68fb5d22f0a8";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-index-python launch launch-ros xacro ];
  nativeBuildInputs = [ ament-cmake-python ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
