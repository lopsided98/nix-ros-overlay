
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, rosidl-default-generators, sensor-msgs, tf2-ros, object-msgs, std-msgs, rosidl-default-runtime, geometry-msgs }:
buildRosPackage rec {
  pname = "ros-dashing-object-analytics-msgs";
  version = "0.5.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_object_analytics-release/archive/release/dashing/object_analytics_msgs/0.5.4-2.tar.gz";
    name = "0.5.4-2.tar.gz";
    sha256 = "24a9c67289212404eb78529f913dbfdab45a635dfff81bfe272af205c802c5c0";
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
