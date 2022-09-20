
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, marti-common-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-mapviz-interfaces";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/galactic/mapviz_interfaces/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "e3724bcf53241edc734d86500f15df59cc79cf8c5e92baee9403f472f02d21bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces marti-common-msgs rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = ''ROS interfaces used by Mapviz'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
