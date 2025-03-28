
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-multisensor-calibration-interface";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multisensor_calibration-release/archive/release/jazzy/multisensor_calibration_interface/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "916e849a4bd934f8b6d1a566c1487da5ff114a4554a179f9bdd85d26bb9b96ce";
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
