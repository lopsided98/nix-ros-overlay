
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-nao-sensor-msgs";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ijnek/nao_interfaces-release/archive/release/galactic/nao_sensor_msgs/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "b17e1f6eafb5252efb614b4219ff50229d7c45b969a05046fc47aef4f0750825";
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
