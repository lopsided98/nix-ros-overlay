
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, nav-msgs, nav2-common, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-iron-nav2-msgs";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_msgs/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "6e446a90b28786c4832cf5395085bd1c120f8a39acd6d543c10e0567ec9c396a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs nav-msgs rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages and service files for the Nav2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
