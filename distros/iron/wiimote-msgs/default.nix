
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-wiimote-msgs";
  version = "3.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/iron/wiimote_msgs/3.1.0-4.tar.gz";
    name = "3.1.0-4.tar.gz";
    sha256 = "68707e471ceef707e1c19106722d2b7fd056b5cb41b81d0109383e16adccbd49";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = ''Messages used by wiimote package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
