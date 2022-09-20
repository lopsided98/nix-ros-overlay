
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, marti-common-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-mapviz-interfaces";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/foxy/mapviz_interfaces/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "872320c65cdca9b4e1f4aa2f0e35001deb126e0dfaaabe896da40b7bc878f4bb";
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
