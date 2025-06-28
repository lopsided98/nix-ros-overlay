
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-nav-2d-msgs";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/kilted/nav_2d_msgs/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "84d38d92143183ca79db10cf50eb7aa5bcedbc4fdd7011899be61727bb8a480d";
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
