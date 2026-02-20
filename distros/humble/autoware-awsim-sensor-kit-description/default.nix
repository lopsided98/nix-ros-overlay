
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, autoware-sample-sensor-kit-description, velodyne-description, xacro }:
buildRosPackage {
  pname = "ros-humble-autoware-awsim-sensor-kit-description";
  version = "1.7.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_awsim_sensor_kit_description/1.7.0-2.tar.gz";
    name = "1.7.0-2.tar.gz";
    sha256 = "87850a918b876c481d2ae8c04dc0d1f2e0933974de52be318a78b01e399b8107";
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
