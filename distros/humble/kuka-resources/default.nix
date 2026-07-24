
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-resources";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_resources/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "04e17f3b1f7b33c8656c97383c1a41708654e1bdb42a44f60a80521671b2b038";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains common urdf / xacro resources used by KUKA robot support packages within the ROS-Industrial program.";
    license = with lib.licenses; [ asl20 ];
  };
}
