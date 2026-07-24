
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-kuka-resources";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/jazzy/kuka_resources/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "07bb9e2051e6369e170b41d6b0db3bf319d9cee4732af6dabd8c88cf1d32a2d4";
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
