
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-sick-safetyscanners2-interfaces";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners2_interfaces-release/archive/release/iron/sick_safetyscanners2_interfaces/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "102ec87fbc99cfd7f44ec444d21d09f403eedc64f7ea6d73977985ae136363b0";
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
