
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rosidl-default-runtime, std-msgs, ament-cmake, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-dashing-object-msgs";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_object_msgs-release/archive/release/dashing/object_msgs/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "5c3dc7a345ffd92aaf80a028427eb60a521834a90595fa5795833f1325fe53ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs std-msgs rosidl-default-generators ];
  propagatedBuildInputs = [ std-msgs sensor-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''This package defines messages for NCS inference'';
    license = with lib.licenses; [ asl20 ];
  };
}
