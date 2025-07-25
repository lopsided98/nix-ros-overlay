
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-description";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot3-release/archive/release/humble/turtlebot3_description/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "fc61bc66f781b49a31fd22fa0bef8d25ddb59debc77e6c326f938a7d1539d949";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "3D models of the TurtleBot3 for simulation and visualization";
    license = with lib.licenses; [ asl20 ];
  };
}
