
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, sensor-msgs, rosidl-default-generators, std-msgs, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-crystal-object-msgs";
  version = "0.3.0-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ros2_object_msgs-release/archive/release/crystal/object_msgs/0.3.0-1.tar.gz;
    sha256 = "0ff91ee611ff83f2c486675907db807660ca39f61db519a77b59543d627735c2";
  };

  buildInputs = [ std-msgs sensor-msgs rosidl-default-generators ];
  propagatedBuildInputs = [ std-msgs sensor-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''This package defines messages for NCS inference'';
    license = with lib.licenses; [ asl20 ];
  };
}
