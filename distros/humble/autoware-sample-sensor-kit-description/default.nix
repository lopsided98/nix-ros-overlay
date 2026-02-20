
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-humble-autoware-sample-sensor-kit-description";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_sample_sensor_kit_description/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "9982669f13691b33073d045a23a180d41968ffa22c8587f1a1ad694bc42e39ba";
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
