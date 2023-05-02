
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-stereo-msgs";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/stereo_msgs/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "c2555dfe867048b5139f55d7c2f1e6a6d97a741484ca3ee3b97d2aa9e7e08475";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some stereo camera related message definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
