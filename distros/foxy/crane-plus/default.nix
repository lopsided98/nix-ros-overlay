
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, crane-plus-control, crane-plus-description, crane-plus-examples, crane-plus-gazebo, crane-plus-ignition, crane-plus-moveit-config }:
buildRosPackage {
  pname = "ros-foxy-crane-plus";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/foxy/crane_plus/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "1f6c58c66155cc87879794b0bb41f355f7564b692fea8c6b9b6da06ffdee8346";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ crane-plus-control crane-plus-description crane-plus-examples crane-plus-gazebo crane-plus-ignition crane-plus-moveit-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 package suite of CRANE+ V2'';
    license = with lib.licenses; [ asl20 ];
  };
}
