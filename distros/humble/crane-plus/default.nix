
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, crane-plus-control, crane-plus-description, crane-plus-examples, crane-plus-gazebo, crane-plus-moveit-config }:
buildRosPackage {
  pname = "ros-humble-crane-plus";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/humble/crane_plus/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "f49f38e4c6e40fc43239fb9d749c6a4467734b732ca9e77adca993eed895bf69";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ crane-plus-control crane-plus-description crane-plus-examples crane-plus-gazebo crane-plus-moveit-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 package suite of CRANE+ V2'';
    license = with lib.licenses; [ asl20 ];
  };
}
