
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, marti-common-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-mapviz-interfaces";
  version = "4.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/jazzy/mapviz_interfaces/4.2.0-2.tar.gz";
    name = "4.2.0-2.tar.gz";
    sha256 = "fd569e6aac6741f5f5d1f7f6dbf1a4820d3644603d0c44ab68dfc2e475d40ed9";
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
