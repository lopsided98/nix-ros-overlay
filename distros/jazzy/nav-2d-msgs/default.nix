
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nav-2d-msgs";
  version = "1.3.14-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav_2d_msgs/1.3.14-1.tar.gz";
    name = "1.3.14-1.tar.gz";
    sha256 = "75f1d2f39f9ed9c4ff990446c2705fc7542c6d77c4759c72d1905c44f73ceeb3";
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
