
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, geometry-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-mbf-msgs";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/move_base_flex-release/archive/release/humble/mbf_msgs/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "fcda50e3863ef4917427f1223428f05ce6ca385acffb236724b5453763eecfb5";
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
