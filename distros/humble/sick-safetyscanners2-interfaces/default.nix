
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-sick-safetyscanners2-interfaces";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners2_interfaces-release/archive/release/humble/sick_safetyscanners2_interfaces/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "1fb6b3dd93f0e5dd909963e75c254915785554b6b0cdd8f2f54e9801ad373fcb";
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
