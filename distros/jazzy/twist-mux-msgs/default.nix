
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-twist-mux-msgs";
  version = "3.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/twist_mux_msgs-release/archive/release/jazzy/twist_mux_msgs/3.0.1-3.tar.gz";
    name = "3.0.1-3.tar.gz";
    sha256 = "7789b87fa8407d709c3df93a89484a5184713684da70b08f7b12369e4a8bdc0d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The twist_mux msgs and actions package";
    license = with lib.licenses; [ asl20 ];
  };
}
