
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-nao-sensor-msgs";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_interfaces-release/archive/release/lyrical/nao_sensor_msgs/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "957a62c858648509a648845a9acace9d703abf1c50249cd9ebebb8d416e91405";
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
