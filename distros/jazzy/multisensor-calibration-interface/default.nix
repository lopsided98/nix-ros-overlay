
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-multisensor-calibration-interface";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multisensor_calibration-release/archive/release/jazzy/multisensor_calibration_interface/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "1ca36f061efa51b4ad9614d846c54d6f4b12578695bce138272dff1779f265f4";
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
