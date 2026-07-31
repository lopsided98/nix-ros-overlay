
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, autoware-sample-sensor-kit-description, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-jazzy-autoware-awsim-sensor-kit-description";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_awsim_sensor_kit_description/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "17f033ed1e646800676987dfb0ae72f12187af5a1db9ae875acbb446744fe4ff";
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
