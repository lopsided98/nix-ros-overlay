
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-nao-lola-sensor-msgs";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/rolling/nao_lola_sensor_msgs/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "701f016617c7b38aeeaf7d1ed1f085811de912052a0e5e9a7c498705ded88c58";
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
