
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, nav-msgs, nav2-common, rclcpp, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-nav2-msgs";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/galactic/nav2_msgs/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "4f7946653eca774cabc0868fcef181f859caa774b81e3a6bad5e0df241205b3e";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav2-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs nav-msgs rclcpp rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages and service files for the Nav2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
