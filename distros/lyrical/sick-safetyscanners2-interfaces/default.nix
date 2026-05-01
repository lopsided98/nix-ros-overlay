
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-sick-safetyscanners2-interfaces";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners2_interfaces-release/archive/release/lyrical/sick_safetyscanners2_interfaces/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "51eefdc23ff5b1c3080413a7546a17569b93cb08e02b22613a1fb4847a9e4093";
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
