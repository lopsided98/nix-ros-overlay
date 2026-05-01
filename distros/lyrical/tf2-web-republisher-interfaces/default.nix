
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-tf2-web-republisher-interfaces";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tf2_web_republisher-release/archive/release/lyrical/tf2_web_republisher_interfaces/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "36f843fb87dd4ce5072ed59f45c214350350881d84d33a892e68e7641f9ec926";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Interface definitions for tf2_web_republisher";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
