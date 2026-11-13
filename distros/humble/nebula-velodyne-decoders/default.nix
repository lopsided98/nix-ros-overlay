
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, autoware-cmake, boost, nebula-core-common, nebula-core-decoders, nebula-velodyne-common, rclcpp, ros-environment, velodyne-msgs }:
buildRosPackage {
  pname = "ros-humble-nebula-velodyne-decoders";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_velodyne_decoders/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "0d07c5719bfe00c0e35358ec4bc2cec57a2d4bb97dfac316533aa05a9c48b0ef";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ angles boost nebula-core-common nebula-core-decoders nebula-velodyne-common rclcpp velodyne-msgs ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Velodyne Decoders Library";
    license = with lib.licenses; [ asl20 ];
  };
}
