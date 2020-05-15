
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, marti-common-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-eloquent-mapviz-interfaces";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/mapviz-release/archive/release/eloquent/mapviz_interfaces/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "541d2df9acbabd0a93bf27c33938d3e0e7b6c2576829660c37eb03a90a7fa967";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces marti-common-msgs ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ];

  meta = {
    description = ''ROS interfaces used by Mapviz'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
