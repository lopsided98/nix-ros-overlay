
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, rosidl-default-generators, sensor-msgs, tf2-ros, object-msgs, std-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-crystal-object-analytics-msgs";
  version = "0.5.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/crystal/object_analytics_msgs/0.5.3-0.tar.gz";
    name = "0.5.3-0.tar.gz";
    sha256 = "cfa7e51f2ab2c6e644bb41065ea62712cd8fc4b20e16741eda5d6512ab9619ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces rosidl-default-generators sensor-msgs tf2-ros std-msgs object-msgs geometry-msgs ];
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs tf2-ros std-msgs object-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''object analytics message definition'';
    license = with lib.licenses; [ asl20 ];
  };
}
