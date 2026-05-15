
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-sick-safetyscanners2-interfaces";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners2_interfaces-release/archive/release/humble/sick_safetyscanners2_interfaces/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "6e3f7425618c8dec3c0960b71d81f3c0eaf55bc2624f4785114f91df464345be";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Interfaces for the sick_safetyscanners ros2 driver";
    license = with lib.licenses; [ "ALv2" ];
  };
}
