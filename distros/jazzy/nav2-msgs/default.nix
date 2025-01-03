
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geographic-msgs, geometry-msgs, nav-msgs, nav2-common, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nav2-msgs";
  version = "1.3.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/jazzy/nav2_msgs/1.3.4-1.tar.gz";
    name = "1.3.4-1.tar.gz";
    sha256 = "ca1190952351801f44bcbd8f6e466d9e6cccf0ebc5279b921cc1835676686c24";
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
