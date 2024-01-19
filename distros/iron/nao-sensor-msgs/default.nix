
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-nao-sensor-msgs";
  version = "0.0.4-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_interfaces-release/archive/release/iron/nao_sensor_msgs/0.0.4-4.tar.gz";
    name = "0.0.4-4.tar.gz";
    sha256 = "6954499bf73c06a45e449509f1679e16e0cbfb46761c2705638fae4d7be9b1d9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package defining sensor msgs to be received from NAO robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
