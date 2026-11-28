
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-multisensor-calibration-interface";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multisensor_calibration-release/archive/release/lyrical/multisensor_calibration_interface/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "00c667be283339f8a7173ed5d78a69133bffda4319a1062fdb525da6584ca6e7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages and service definitions for the multisensor_calibration package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
