
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-eloquent-marti-visualization-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/eloquent/marti_visualization_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "5a4b4c73057bf58aae8bdd842b0c05857dd0d35e8c94df1d626122f7cf0bd79f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_visualization_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
