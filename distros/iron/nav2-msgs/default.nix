
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geographic-msgs, geometry-msgs, nav-msgs, nav2-common, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-iron-nav2-msgs";
  version = "1.2.5-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_msgs/1.2.5-2.tar.gz";
    name = "1.2.5-2.tar.gz";
    sha256 = "985fa51e5c3610be12cfacc4cb06ab1ea7d8ba84756f1703b6568c0a5ab56ec4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geographic-msgs geometry-msgs nav-msgs rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages and service files for the Nav2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
