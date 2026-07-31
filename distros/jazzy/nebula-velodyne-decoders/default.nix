
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, autoware-cmake, boost, nebula-core-common, nebula-core-decoders, nebula-velodyne-common, rclcpp, ros-environment, velodyne-msgs }:
buildRosPackage {
  pname = "ros-jazzy-nebula-velodyne-decoders";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_velodyne_decoders/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "f36dfeeb0c392dfa75aec254051eac84af3d2af2014e0be8a328c63622ea5081";
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
