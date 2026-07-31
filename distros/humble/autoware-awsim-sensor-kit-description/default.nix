
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, autoware-sample-sensor-kit-description, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-humble-autoware-awsim-sensor-kit-description";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_awsim_sensor_kit_description/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "e251de3685ece0ce89934eeddf07560c75f091c53113f074c8d6c301e207ae67";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ autoware-sample-sensor-kit-description velodyne-description xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_awsim_sensor_kit_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
