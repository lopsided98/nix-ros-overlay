
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, nav-msgs, nav2-common, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-nav2-msgs";
  version = "0.4.7-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/foxy/nav2_msgs/0.4.7-1.tar.gz";
    name = "0.4.7-1.tar.gz";
    sha256 = "5c7c50ee178bfcdddb4247b835d8ab88cf8e58dbdbd74a07327f1c11406643d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake nav2-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs nav-msgs rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages and service files for the navigation2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
