
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-nao-sensor-msgs";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ijnek/nao_interfaces-release/archive/release/galactic/nao_sensor_msgs/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "3609ad9a77e2d17cc31ea5b3d67142230ef654003305b4b2759326226c79195c";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package providing sensor msgs to be used with a NAO robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
