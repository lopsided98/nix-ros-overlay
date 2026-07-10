
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, geometry-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-mbf-msgs";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/humble/mbf_msgs/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "bafce89397bffa9ccd6f372b52f678d72460d62c09ccce88d1e7be4594597511";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs geometry-msgs nav-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The move_base_flex messages package providing the action definition files for the action GetPath, ExePath, Recovery and MoveBase. The action servers providing these action are implemented in <a href=\"http://wiki.ros.org/mbf_abstract_nav\">mbf_abstract_nav</a>.";
    license = with lib.licenses; [ bsd3 ];
  };
}
