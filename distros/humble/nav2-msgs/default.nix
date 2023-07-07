
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, nav-msgs, nav2-common, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-humble-nav2-msgs";
  version = "1.1.8-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/nav2_msgs/1.1.8-2.tar.gz";
    name = "1.1.8-2.tar.gz";
    sha256 = "c6e5194c08dedc65c0028008b18defe750503f063ab4ca19e0622a7c1c63998e";
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
