
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, autoware-sample-sensor-kit-description, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-jazzy-autoware-awsim-sensor-kit-description";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_awsim_sensor_kit_description/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "0c9ea081c61bf2931111dbba5a2b4fa0a975578b98eeb79a5db924df92f5fb99";
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
