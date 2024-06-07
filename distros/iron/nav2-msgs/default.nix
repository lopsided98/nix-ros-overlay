
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geographic-msgs, geometry-msgs, nav-msgs, nav2-common, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-iron-nav2-msgs";
  version = "1.2.9-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_msgs/1.2.9-1.tar.gz";
    name = "1.2.9-1.tar.gz";
    sha256 = "e59dc5e05215e556b8e4b14453524c4df1945501217ecb237b283ec432d85c4c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geographic-msgs geometry-msgs nav-msgs rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages and service files for the Nav2 stack";
    license = with lib.licenses; [ asl20 ];
  };
}
