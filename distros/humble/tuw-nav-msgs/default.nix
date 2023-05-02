
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, tuw-geometry-msgs }:
buildRosPackage {
  pname = "ros-humble-tuw-nav-msgs";
  version = "0.0.15-r3";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/humble/tuw_nav_msgs/0.0.15-3.tar.gz";
    name = "0.0.15-3.tar.gz";
    sha256 = "097a436221df31971082e8427680686e7444461b2d97e3bfa929bac05f8f08bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-msgs rosidl-default-runtime std-msgs tuw-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The tuw_nav_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
