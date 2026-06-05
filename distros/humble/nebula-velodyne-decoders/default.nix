
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, autoware-cmake, boost, nebula-core-common, nebula-core-decoders, nebula-velodyne-common, rclcpp, ros-environment, velodyne-msgs }:
buildRosPackage {
  pname = "ros-humble-nebula-velodyne-decoders";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/humble/nebula_velodyne_decoders/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "553bba0359639735b66a7c3463a202a1b3aa374748ed0b99da5d56733ac88dfd";
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
