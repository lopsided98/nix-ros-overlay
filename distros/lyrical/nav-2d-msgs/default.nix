
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nav-2d-msgs";
  version = "1.5.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/navigation2-release/archive/release/lyrical/nav_2d_msgs/1.5.2-2.tar.gz";
    name = "1.5.2-2.tar.gz";
    sha256 = "bda160d8e857484ab78878e5f8858ac45b04e30e5618178fbdfac1b854faf1e0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ backward-ros geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Basic message types for two dimensional navigation, extending from geometry_msgs::Pose.";
    license = with lib.licenses; [ bsd3 ];
  };
}
