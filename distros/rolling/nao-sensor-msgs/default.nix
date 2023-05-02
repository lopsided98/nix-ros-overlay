
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-nao-sensor-msgs";
  version = "0.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_interfaces-release/archive/release/rolling/nao_sensor_msgs/0.0.4-3.tar.gz";
    name = "0.0.4-3.tar.gz";
    sha256 = "759b9727be6f8e3d75def5a3c5e52e55f44ab792f01ca4fe75b9e2dd77bc40d6";
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
