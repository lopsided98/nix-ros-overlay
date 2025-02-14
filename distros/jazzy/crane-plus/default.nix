
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, crane-plus-control, crane-plus-description, crane-plus-examples, crane-plus-gazebo, crane-plus-moveit-config }:
buildRosPackage {
  pname = "ros-jazzy-crane-plus";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/jazzy/crane_plus/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "ab160fb1ca4fed021efa105ebcf93c4424de41f701af787cd9ba85f3a0fef971";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ crane-plus-control crane-plus-description crane-plus-examples crane-plus-gazebo crane-plus-moveit-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 package suite of CRANE+ V2";
    license = with lib.licenses; [ asl20 ];
  };
}
