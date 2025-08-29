
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-resources";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_resources/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "18f458eb952710f804686e51a9a302b45392109347b4b76771fdf906084fa629";
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
