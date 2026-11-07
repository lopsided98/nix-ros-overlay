
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, marti-common-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-mapviz-interfaces";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/kilted/mapviz_interfaces/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "d353be2aca982ff0f200964a5906919bb1bfc0e20f8f47a3f30cd6cc348f77e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ marti-common-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS interfaces used by Mapviz";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
