
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, autoware-sample-sensor-kit-description, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-humble-autoware-awsim-sensor-kit-description";
  version = "1.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_awsim_sensor_kit_description/1.8.0-3.tar.gz";
    name = "1.8.0-3.tar.gz";
    sha256 = "59b00778c9ae7aaf68af3a4356abc0c3dc4218050ec4737b9e5d5c29f9dc2e62";
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
