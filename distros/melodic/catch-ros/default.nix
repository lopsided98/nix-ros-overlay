
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-catch-ros";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/AIS-Bonn/catch_ros-release/archive/release/melodic/catch_ros/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "186ec627d219a896f681446242ce546c8595429ac4f058fab5ac4aebec4f261b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS integration for the Catch unit test framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
