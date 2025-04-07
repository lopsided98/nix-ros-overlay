
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-multisensor-calibration-interface";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multisensor_calibration-release/archive/release/jazzy/multisensor_calibration_interface/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "e5eec64c7bbc094f2cb21a7b2b2d0c9190f9e1b2b6b3b81d82527130309b7535";
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
