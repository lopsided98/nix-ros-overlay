
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, marti-common-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-mapviz-interfaces";
  version = "2.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mapviz-release/archive/release/kilted/mapviz_interfaces/2.5.6-1.tar.gz";
    name = "2.5.6-1.tar.gz";
    sha256 = "1b1bb0de1161401c81163ad459e22daa9d190e8e8575100e8e27f64b569e2679";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces marti-common-msgs rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = "ROS interfaces used by Mapviz";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
