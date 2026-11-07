
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nav-2d-msgs";
  version = "1.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav_2d_msgs/1.5.3-1.tar.gz";
    name = "1.5.3-1.tar.gz";
    sha256 = "d50de971f734d08e99cfd7787cbf3d0aaa305d2ae57bd4174c32d5abffc7fb6b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ backward-ros rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Basic message types for two dimensional navigation, extending from geometry_msgs::Pose.";
    license = with lib.licenses; [ bsd3 ];
  };
}
