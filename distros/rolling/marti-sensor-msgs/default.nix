
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-marti-sensor-msgs";
  version = "1.5.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/rolling/marti_sensor_msgs/1.5.2-2.tar.gz";
    name = "1.5.2-2.tar.gz";
    sha256 = "5bf8a94b845f4d4f7fbd54278353258a1d3f2917f9cf486fbc170269a7f7f82c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''marti_sensor_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
