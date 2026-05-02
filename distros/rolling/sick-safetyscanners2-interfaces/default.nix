
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-sick-safetyscanners2-interfaces";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners2_interfaces-release/archive/release/rolling/sick_safetyscanners2_interfaces/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "77a9865f3459c3b73e99fc4d1629d5234d8c59ebbc5d3661c2d5c14a7576d0bf";
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
