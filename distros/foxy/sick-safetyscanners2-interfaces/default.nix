
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-sick-safetyscanners2-interfaces";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners2_interfaces-release/archive/release/foxy/sick_safetyscanners2_interfaces/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "4062eb6538ef8d76e8316170f571196f7d526d51b6fa806b000ba46a6e615d15";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interfaces for the sick_safetyscanners ros2 driver'';
    license = with lib.licenses; [ "ALv2" ];
  };
}
