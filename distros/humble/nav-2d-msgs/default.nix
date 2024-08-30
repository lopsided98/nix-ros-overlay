
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-nav-2d-msgs";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav_2d_msgs/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "895708600cdc792e97ed2af37b7f8bc43e50c8fcbb3b0f5df6b4949fbe9dee4b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-generators rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Basic message types for two dimensional navigation, extending from geometry_msgs::Pose2D.";
    license = with lib.licenses; [ bsd3 ];
  };
}
