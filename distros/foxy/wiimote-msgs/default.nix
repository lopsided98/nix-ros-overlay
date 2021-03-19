
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-wiimote-msgs";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/foxy/wiimote_msgs/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "48880d97a45d963bd3267f60e1d21c74c50e543166f3e321d0928a855e1db0a8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = ''Messages used by wiimote package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
