
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-noetic-hatchbed-common";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hatchbed_common-release/archive/release/noetic/hatchbed_common/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "b9a4793cc77f243166c9eeb3a963b4d3cced9629ad8e7ee26d0b06ef50126f4d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Common Hatchbed C++ utility code for ROS, such registering and handling updates to ros parameters.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
