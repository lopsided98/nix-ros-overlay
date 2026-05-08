
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-jazzy-autoware-sample-sensor-kit-description";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_sample_sensor_kit_description/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "340912e6662d085a54351a4aae3903c2f3d22fbd16ddaafa1bfbfd0bb56742f9";
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
