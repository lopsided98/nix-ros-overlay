
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, sensor-msgs, rosidl-default-generators, geographic-msgs, marti-common-msgs, std-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-marti-nav-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_messages-release/archive/release/dashing/marti_nav_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b26de330cd710b9807638c1c961854effa19da429d069fe60158595f905c9f30";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces sensor-msgs geographic-msgs marti-common-msgs std-msgs geometry-msgs ];
  propagatedBuildInputs = [ builtin-interfaces sensor-msgs geographic-msgs marti-common-msgs std-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''marti_nav_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
