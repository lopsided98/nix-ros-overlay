
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-humble-autoware-sample-sensor-kit-description";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_sample_sensor_kit_description/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "3d322838d64cd180fa032c25be6222df231e7144ae1ee82121c2f197eb016acb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ velodyne-description xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_sample_sensor_kit_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
