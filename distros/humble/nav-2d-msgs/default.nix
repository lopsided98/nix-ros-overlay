
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-nav-2d-msgs";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav_2d_msgs/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "88ce46687f2a86683f48ed5f1e2efed307ee1e7056b977b03f9c02aab1b2d38a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-generators rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Basic message types for two dimensional navigation, extending from geometry_msgs::Pose2D.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
