
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-nao-lola-sensor-msgs";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/lyrical/nao_lola_sensor_msgs/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "3decb6d5eb6562467cbe7a30554a0e8b06e48b57b87f2d24ca25d513ba82ecac";
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
