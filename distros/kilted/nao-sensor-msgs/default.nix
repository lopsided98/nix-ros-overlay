
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-nao-sensor-msgs";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_interfaces-release/archive/release/kilted/nao_sensor_msgs/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "5cc7f6d3d91bf9984cd0a3364c79e13664d43b9b7b3080c81e415023755de0d4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package defining sensor msgs to be received from NAO robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
