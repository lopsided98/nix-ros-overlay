
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-nav-2d-msgs";
  version = "1.1.17-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav_2d_msgs/1.1.17-1.tar.gz";
    name = "1.1.17-1.tar.gz";
    sha256 = "5c7454463576e20b6f558f094d980f651a4f9c3a04e5002d27231e3376a5d6c0";
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
