
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-jazzy-autoware-sample-sensor-kit-description";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_sample_sensor_kit_description/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "9be75294c8d6dfb7e530c18d7b853df5890225246013160a92ae83a9097e9af1";
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
