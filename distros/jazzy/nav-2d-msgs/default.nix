
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nav-2d-msgs";
  version = "1.3.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav_2d_msgs/1.3.6-1.tar.gz";
    name = "1.3.6-1.tar.gz";
    sha256 = "afe3b7b370b31e47615c274542b8c8b19873933c3ca4d6d69da22d6ee078da13";
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
