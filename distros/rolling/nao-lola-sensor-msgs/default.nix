
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-nao-lola-sensor-msgs";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/rolling/nao_lola_sensor_msgs/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "8b1cec8e1b57a146b23fb877f0a790b4a3ddc28a7c85ccaef3ee53b38cf01a3d";
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
