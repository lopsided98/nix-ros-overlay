
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, crane-plus-control, crane-plus-description, crane-plus-examples, crane-plus-gazebo, crane-plus-moveit-config }:
buildRosPackage {
  pname = "ros-humble-crane-plus";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/crane_plus-release/archive/release/humble/crane_plus/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "8970cb60e5203f1c8a2ed608d7812ec152f97a8461c979a06ddf937574f5d1ab";
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
