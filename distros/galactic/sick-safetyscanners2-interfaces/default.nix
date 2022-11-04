
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-sick-safetyscanners2-interfaces";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners2_interfaces-release/archive/release/galactic/sick_safetyscanners2_interfaces/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "745e3a59706875ad05ddb1dcb835e24bca73c9fd5831ee08030cd662c2da11bd";
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
